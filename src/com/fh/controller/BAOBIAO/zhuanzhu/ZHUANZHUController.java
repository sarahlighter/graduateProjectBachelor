package com.fh.controller.BAOBIAO.zhuanzhu;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

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
import com.fh.util.ObjectExcelView;
import com.fh.util.PageData;
import com.fh.util.Jurisdiction;
import com.fh.util.Tools;
import com.fh.service.BAOBIAO.zhuanzhu.ZHUANZHUManager;

/** 
 * 说明：专著
 */
@Controller
@RequestMapping(value="/zhuanzhu")
public class ZHUANZHUController extends BaseController {
	
	String menuUrl = "zhuanzhu/list.do"; //菜单地址(权限用)
	@Resource(name="zhuanzhuService")
	private ZHUANZHUManager zhuanzhuService;
	
	/**保存
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"新增ZHUANZHU");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("ZHUANZHU_ID", this.get32UUID());	//主键
		zhuanzhuService.save(pd);
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
		logBefore(logger, Jurisdiction.getUsername()+"删除ZHUANZHU");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		pd = this.getPageData();
		zhuanzhuService.delete(pd);
		out.write("success");
		out.close();
	}
	
	/**修改
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改ZHUANZHU");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		zhuanzhuService.edit(pd);
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
		logBefore(logger, Jurisdiction.getUsername()+"列表ZHUANZHU");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		page.setPd(pd);
		List<PageData>	varList = zhuanzhuService.list(page);	//列出ZHUANZHU列表
		mv.setViewName("BAOBIAO/zhuanzhu/zhuanzhu_list");
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
		mv.setViewName("BAOBIAO/zhuanzhu/zhuanzhu_edit");
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
		pd = zhuanzhuService.findById(pd);	//根据ID读取
		mv.setViewName("BAOBIAO/zhuanzhu/zhuanzhu_edit");
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
		logBefore(logger, Jurisdiction.getUsername()+"批量删除ZHUANZHU");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		pd = this.getPageData();
		List<PageData> pdList = new ArrayList<PageData>();
		String DATA_IDS = pd.getString("DATA_IDS");
		if(null != DATA_IDS && !"".equals(DATA_IDS)){
			String ArrayDATA_IDS[] = DATA_IDS.split(",");
			zhuanzhuService.deleteAll(ArrayDATA_IDS);
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
		logBefore(logger, Jurisdiction.getUsername()+"导出ZHUANZHU到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<String> titles = new ArrayList<String>();
		titles.add("序号");
		titles.add("著作名称");	//1
		titles.add("作者");	//2
		titles.add("著作中我校第一作者在所有作者中的排序");	//3
		titles.add("著作总字数（千字）");	//4
		titles.add("我校在著作中的所有作者撰写总字数（千字）");	//5
		titles.add("著作类别");	//6
		titles.add("出版单位");	//7
		titles.add("出版地");	//8
		titles.add("出版年月");	//9
		titles.add("ISBN");	//10
		titles.add("是否与外单位合作");	//11
		titles.add("著作中我校第一作者所属学院");	//12
		titles.add("著作类型");	//13
		titles.add("学科门类");	//14
		dataMap.put("titles", titles);
		List<PageData> varOList = zhuanzhuService.listAll(pd);
		List<PageData> varList = new ArrayList<PageData>();
		for(int i=0;i<varOList.size();i++){
			PageData vpd = new PageData();
			vpd.put("var1",String.valueOf(i+1));	
			vpd.put("var2", varOList.get(i).getString("ZHUZUONAME"));	    //1
			vpd.put("var3", varOList.get(i).getString("AUTHOR"));	    //2
			vpd.put("var4", varOList.get(i).getString("WOXIAOPAIWEI"));	    //3
			vpd.put("var5", varOList.get(i).getString("ZONGZISHU"));	    //4
			vpd.put("var6", varOList.get(i).getString("WOXIAOZISHU"));	    //5
			vpd.put("var7", varOList.get(i).getString("ZHUZUOLEIBIE"));	    //6
			vpd.put("var8", varOList.get(i).getString("CHUBANDANWEI"));	    //7
			vpd.put("var9", varOList.get(i).getString("CHUBANDI"));	    //8
			vpd.put("var10", varOList.get(i).getString("CHUBANNIANYUE"));	    //9
			vpd.put("var11", varOList.get(i).getString("ISBN"));	    //10
			vpd.put("var12", varOList.get(i).getString("HEZUOORNOT"));	    //11
			vpd.put("var13", varOList.get(i).getString("DIYIXUEYUAN"));	    //12
			vpd.put("var14", varOList.get(i).getString("ZHUZUOLEIXING"));	    //13
			vpd.put("var15", varOList.get(i).getString("XUEKEMENLEI"));	    //14
			varList.add(vpd);
		}
		dataMap.put("varList", varList);
		ObjectExcelView erv = new ObjectExcelView();
		mv = new ModelAndView(erv,dataMap);
		return mv;
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
