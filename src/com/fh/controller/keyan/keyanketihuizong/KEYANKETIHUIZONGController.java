package com.fh.controller.keyan.keyanketihuizong;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.util.AppUtil;
import com.fh.util.Const;
import com.fh.util.DelAllFile;
import com.fh.util.FileDownload;
import com.fh.util.FileUtil;
import com.fh.util.ObjectExcelView;
import com.fh.util.PageData;
import com.fh.util.Jurisdiction;
import com.fh.util.PathUtil;
import com.fh.util.Tools;
import com.fh.service.keyan.keyanketihuizong.KEYANKETIHUIZONGManager;

/** 
 * 说明：科研课题汇总表
 */
@Controller
@RequestMapping(value="/keyanketihuizong")
public class KEYANKETIHUIZONGController extends BaseController {
	
	String menuUrl = "keyanketihuizong/list.do"; //菜单地址(权限用)
	@Resource(name="keyanketihuizongService")
	private KEYANKETIHUIZONGManager keyanketihuizongService;
	
	/**保存
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"新增KEYANKETIHUIZONG");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("KEYANKETIHUIZONG_ID", this.get32UUID());	//主键
		
		pd.put("FILESIZE", FileUtil.getFilesize(PathUtil.getClasspath() + Const.FILEPATHFILEOA + pd.getString("FILEPATH")));	//文件大小
		
		keyanketihuizongService.save(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**删除
	 * @param out
	 * @throws Exception
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"删除KEYANKETIHUIZONG");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		pd = this.getPageData();
		keyanketihuizongService.delete(pd);
		out.write("success");
		out.close();
	}
	
	/**修改
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改KEYANKETIHUIZONG");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		keyanketihuizongService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**列表
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"列表KEYANKETIHUIZONG");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		page.setPd(pd);
		List<PageData>	varList = keyanketihuizongService.list(page);	//列出KEYANKETIHUIZONG列表
		mv.setViewName("keyan/keyanketihuizong/keyanketihuizong_list");
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
		return mv;
	}
	
	/**去新增页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		mv.setViewName("keyan/keyanketihuizong/keyanketihuizong_edit");
		mv.addObject("msg", "save");
		mv.addObject("pd", pd);
		return mv;
	}	
	
	 /**去修改页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goEdit")
	public ModelAndView goEdit()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = keyanketihuizongService.findById(pd);	//根据ID读取
		mv.setViewName("keyan/keyanketihuizong/keyanketihuizong_edit");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		return mv;
	}	
	
	 /**批量删除
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/deleteAll")
	@ResponseBody
	public Object deleteAll() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"批量删除KEYANKETIHUIZONG");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		pd = this.getPageData();
		List<PageData> pdList = new ArrayList<PageData>();
		String DATA_IDS = pd.getString("DATA_IDS");
		if(null != DATA_IDS && !"".equals(DATA_IDS)){
			
			String ArrayDATA_IDS[] = DATA_IDS.split(",");
			PageData fpd = new PageData();
			
			for(int i=0;i<ArrayDATA_IDS.length;i++){
				fpd.put("KEYANKETIHUIZONG_ID", ArrayDATA_IDS[i]);
				fpd = keyanketihuizongService.findById(fpd);
				DelAllFile.delFolder(PathUtil.getClasspath()+ Const.FILEPATHFILEOA + fpd.getString("FILEPATH")); //删除物理文件
			}


			keyanketihuizongService.deleteAll(ArrayDATA_IDS);
			pd.put("msg", "ok");
		}else{
			pd.put("msg", "no");
		}
		pdList.add(pd);
		map.put("list", pdList);
		return AppUtil.returnObject(pd, map);
	}
	
	 /**导出到excel
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"导出KEYANKETIHUIZONG到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<String> titles = new ArrayList<String>();
		titles.add("课题名称");	//1
		titles.add("负责人id");	//2
		titles.add("负责人姓名");	//3
		titles.add("课题来源");	//4
		titles.add("到位经费（万）");	//5
		titles.add("课题级别");	//6
		titles.add("团队人数");	//7
		titles.add("所属学课");	//8
		titles.add("文件路径");	//9
		titles.add("审核状况");	//10
		titles.add("文件大小");	//11
		titles.add("通信联络人（电话）");	//12
		dataMap.put("titles", titles);
		List<PageData> varOList = keyanketihuizongService.listAll(pd);
		List<PageData> varList = new ArrayList<PageData>();
		for(int i=0;i<varOList.size();i++){
			PageData vpd = new PageData();
			vpd.put("var1", varOList.get(i).getString("KETINAME"));	    //1
			vpd.put("var2", varOList.get(i).get("FUZERENID").toString());	//2
			vpd.put("var3", varOList.get(i).getString("FUZERENNAME"));	    //3
			vpd.put("var4", varOList.get(i).getString("KETINLAIYUAN"));	    //4
			vpd.put("var5", varOList.get(i).get("DAOWEIJINGFEI").toString());	//5
			vpd.put("var6", varOList.get(i).get("KETIJIBIE").toString());	//6
			vpd.put("var7", varOList.get(i).get("TUANDUIRENSHU").toString());	//7
			vpd.put("var8", varOList.get(i).getString("SUBJECT"));	    //8
			vpd.put("var9", varOList.get(i).getString("FILEPATH"));	    //9
			vpd.put("var10", varOList.get(i).getString("SHENHE"));	    //10
			vpd.put("var11", varOList.get(i).get("FILESIZE").toString());	//11
			vpd.put("var12", varOList.get(i).get("LIANLUO").toString());	//12
			varList.add(vpd);
		}
		dataMap.put("varList", varList);
		ObjectExcelView erv = new ObjectExcelView();
		mv = new ModelAndView(erv,dataMap);
		return mv;
	}
	

	/**下载
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/download")
	public void downExcel(HttpServletResponse response)throws Exception{
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = keyanketihuizongService.findById(pd);
		String fileName = pd.getString("FILEPATH");
		FileDownload.fileDownload(response, PathUtil.getClasspath() + Const.FILEPATHFILEOA + fileName, pd.getString("KETINAME")+fileName.substring(19, fileName.length()));
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
