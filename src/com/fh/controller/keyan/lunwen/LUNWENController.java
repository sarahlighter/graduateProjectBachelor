package com.fh.controller.keyan.lunwen;

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
import com.fh.entity.system.Role;
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
import com.fh.service.keyan.lunwen.LUNWENManager;
import com.fh.service.keyan.qikanxinxi.QIKANXINXIManager;
import com.fh.service.keyan.xiangmu.XIANGMUManager;
import com.fh.service.system.appuser.AppuserManager;
import com.fh.service.system.user.UserManager;

/** 
 * 说明：论文管理（上传文件2）

 */
@Controller
@RequestMapping(value="/lunwen")
public class LUNWENController extends BaseController {
	
	String menuUrl = "lunwen/list.do"; //菜单地址(权限用)
	@Resource(name="lunwenService")
	private LUNWENManager lunwenService;
	@Resource(name="userService")
	private UserManager userService;
	@Resource(name="xiangmuService")
	private XIANGMUManager xiangmuService;
	@Resource(name="qikanxinxiService")
	private QIKANXINXIManager qikanxinxiService;
	/**保存
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"新增LUNWEN");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("LUNWEN_ID", this.get32UUID());	//主键
		List<PageData>  userList=userService.listAllUser(pd);
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		List<PageData>  qikanList=qikanxinxiService.listAll(pd);
		pd.put("FILESIZE", FileUtil.getFilesize(PathUtil.getClasspath() + Const.FILEPATHFILEOA + pd.getString("FILEPATH")));	//文件大小
		lunwenService.save(pd);
		mv.addObject("userList",userList);
		mv.addObject("xiangmuList",xiangmuList);
		mv.addObject("qikanList",qikanList);
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
		logBefore(logger, Jurisdiction.getUsername()+"删除LUNWEN");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		pd = this.getPageData();
		DelAllFile.delFolder(PathUtil.getClasspath()+ Const.FILEPATHFILEOA + pd.getString("FILEPATH")); //删除文件
		lunwenService.delete(pd);
		out.write("success");
		out.close();
	}
	
	/**查看论文
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/view")
	public ModelAndView view() throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.getString("LUNWEN_ID");
				
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		List<PageData>  userList=userService.listAllUser(pd);
		List<PageData>  qikanList=qikanxinxiService.listAll(pd);
		
		
		pd = lunwenService.findById(pd);
		
		mv.setViewName("keyan/lunwen/lunwen_view");
		
		mv.addObject("qikanList",qikanList);
		mv.addObject("xiangmuList",xiangmuList);
		mv.addObject("userList",userList);
		
		mv.addObject("msg","edit");
		mv.addObject("pd", pd);
		return mv;
	}
	
	/**修改
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改LUNWEN");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		List<PageData>  userList=userService.listAllUser(pd);
		List<PageData>  qikanList=qikanxinxiService.listAll(pd);
		lunwenService.edit(pd);
		mv.addObject("qikanList",qikanList);
		mv.addObject("xiangmuList",xiangmuList);
		mv.addObject("userList",userList);
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
		logBefore(logger, Jurisdiction.getUsername()+"列表LUNWEN");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		page.setPd(pd);
		List<PageData>	varList = lunwenService.list(page);	//列出LUNWEN列表
		List<PageData>  userList=userService.listAllUser(pd);
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		List<PageData>  qikanList=qikanxinxiService.listAll(pd);

		mv.setViewName("keyan/lunwen/lunwen_list");
		mv.addObject("varList", varList);
		mv.addObject("userList",userList);
		mv.addObject("xiangmuList",xiangmuList);
		mv.addObject("qikanList",qikanList);
		mv.addObject("pd", pd);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
		return mv;
	}
	
	 /**第一作者/第二第三作者文章
	 * @param
	 * @throws Exception
	 * @RequestMapping(value="/findpaper")
	public ModelAndView findpaper(Page page)throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"列表LUNWEN");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		page.setPd(pd);
		List<PageData>	varList = lunwenService.list(page);	//列出LUNWEN列表
		List<PageData>  userList=appuserService.listAllUser(pd);
		mv.setViewName("keyan/lunwen/lunwen_list");
		mv.addObject("varList", varList);
		mv.addObject("userList",userList);
		mv.addObject("pd", pd);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
		return mv;
	}	
	 */
	@RequestMapping(value="/findpaper")
	public ModelAndView findpaper(Page page)throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"列表LUNWEN");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		//try{
		String keywords = pd.getString("NUMBER");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		//}
		page.setPd(pd);
		List<PageData> varList = lunwenService.findByName(pd);//列出LUNWEN列表
		List<PageData>  userList=userService.listAllUser(pd);
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		List<PageData>  qikanList=qikanxinxiService.listAll(pd);

		mv.setViewName("keyan/lunwen/lunwen_list");
		mv.addObject("varList", varList);
		mv.addObject("userList",userList);
		mv.addObject("xiangmuList",xiangmuList);
		mv.addObject("qikanList",qikanList);
		mv.addObject("pd", pd);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
		}// catch(Exception e){
			//logger.error(e.toString(), e);
		//}
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
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		List<PageData>  userList=userService.listAllUser(pd);
		List<PageData>  qikanList=qikanxinxiService.listAll(pd);

		mv.setViewName("keyan/lunwen/lunwen_edit");
		mv.addObject("qikanList",qikanList);		
		mv.addObject("userList",userList);
		mv.addObject("xiangmuList",xiangmuList);
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
		pd = lunwenService.findById(pd);	//根据ID读取
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		List<PageData>  userList=userService.listAllUser(pd);
		List<PageData>  qikanList=qikanxinxiService.listAll(pd);

		mv.setViewName("keyan/lunwen/lunwen_edit");
		mv.addObject("qikanList",qikanList);
		mv.addObject("userList",userList);
		mv.addObject("xiangmuList",xiangmuList);
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
		logBefore(logger, Jurisdiction.getUsername()+"批量删除LUNWEN");
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
				fpd.put("LUNWEN_ID", ArrayDATA_IDS[i]);
				fpd = lunwenService.findById(fpd);
				DelAllFile.delFolder(PathUtil.getClasspath()+ Const.FILEPATHFILEOA + fpd.getString("FILEPATH")); //删除物理文件
			}
			lunwenService.deleteAll(ArrayDATA_IDS);
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
		logBefore(logger, Jurisdiction.getUsername()+"导出LUNWEN到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<String> titles = new ArrayList<String>();
		titles.add("论文名");	//1
		titles.add("论文英文名");	//2
		titles.add("发刊日期");	//3
		titles.add("第一作者");	//4
		titles.add("第二作者");	//5
		titles.add("第三作者");	//6
		titles.add("学科门类");	//7
		titles.add("出版单位");	//8
		titles.add("期刊号");	//9
		titles.add("审核状态");	//10
		titles.add("所属项目id");	//11
		titles.add("通信联络人1（电话）");	//12
		titles.add("通信联络人2（电话）");	//13
		titles.add("其他作者");	//14
		titles.add("第一作者教职工编号");	//15
		titles.add("第二作者教职工编号");	//16
		titles.add("第三作者教职工编号");	//17
		titles.add("文件路径");	//18
		dataMap.put("titles", titles);
		List<PageData> varOList = lunwenService.listAll(pd);
		List<PageData> varList = new ArrayList<PageData>();
		for(int i=0;i<varOList.size();i++){
			PageData vpd = new PageData();
			vpd.put("var1", varOList.get(i).getString("LWNAME"));	    //1
			vpd.put("var2", varOList.get(i).getString("ENAME"));	    //2
			vpd.put("var3", varOList.get(i).getString("PUNLISHDATE"));	    //3
			vpd.put("var4", varOList.get(i).getString("FIRSTAUTHOR"));	    //4
			vpd.put("var5", varOList.get(i).getString("SECONDAUTHOR"));	    //5
			vpd.put("var6", varOList.get(i).getString("THIRDAUTHOR"));	    //6
			vpd.put("var7", varOList.get(i).getString("SUBJECT"));	    //7
			vpd.put("var8", varOList.get(i).getString("PUBLISHER"));	    //8
			vpd.put("var9", varOList.get(i).getString("QIKANHAO"));	    //9
			vpd.put("var10", varOList.get(i).getString("SHENHEZT"));	    //10
			vpd.put("var11", varOList.get(i).get("XMID").toString());	//11
			vpd.put("var12", varOList.get(i).get("LIANLUO1").toString());	//12
			vpd.put("var13", varOList.get(i).get("LIANLUO2").toString());	//13
			vpd.put("var14", varOList.get(i).getString("OTHERAUTHER"));	    //14
			vpd.put("var15", varOList.get(i).getString("FIRSTAUTHORNUM"));	    //15
			vpd.put("var16", varOList.get(i).getString("SECONDAUTHERNUM"));	    //16
			vpd.put("var17", varOList.get(i).getString("THIRDAUTHORNUM"));	    //17
			vpd.put("var18", varOList.get(i).getString("FILEPATH"));	    //18
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
		pd = lunwenService.findById(pd);
		String fileName = pd.getString("FILEPATH");
		FileDownload.fileDownload(response, PathUtil.getClasspath() + Const.FILEPATHFILEOA + fileName, pd.getString("LWNAME")+fileName.substring(19, fileName.length()));
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
