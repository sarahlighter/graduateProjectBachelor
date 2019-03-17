package com.fh.controller.keyan.jingfei;

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
import com.fh.service.keyan.jingfei.JINGFEIManager;
import com.fh.service.keyan.xiangmu.XIANGMUManager;

/** 
 * 说明：科研经费拨款清单
 */
@Controller
@RequestMapping(value="/jingfei")
public class JINGFEIController extends BaseController {
	
	String menuUrl = "jingfei/list.do"; //菜单地址(权限用)
	@Resource(name="jingfeiService")
	private JINGFEIManager jingfeiService;
	@Resource(name="xiangmuService")
	private XIANGMUManager xiangmuService;
	
	/**保存
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"新增JINGFEI");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("JINGFEI_ID", this.get32UUID());	//主键
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		
		jingfeiService.save(pd);
		mv.addObject("xiangmuList",xiangmuList);
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
		logBefore(logger, Jurisdiction.getUsername()+"删除JINGFEI");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		pd = this.getPageData();
		jingfeiService.delete(pd);
		out.write("success");
		out.close();
	}
	
	/**修改
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改JINGFEI");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		
		jingfeiService.edit(pd);
		mv.addObject("xiangmuList",xiangmuList);
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
		logBefore(logger, Jurisdiction.getUsername()+"列表JINGFEI");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		page.setPd(pd);
		List<PageData>	varList = jingfeiService.list(page);	//列出JINGFEI列表
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		
		mv.setViewName("keyan/jingfei/jingfei_list");
		mv.addObject("xiangmuList",xiangmuList);
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
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		
		mv.setViewName("keyan/jingfei/jingfei_edit");
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
		pd = jingfeiService.findById(pd);	//根据ID读取
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		
		mv.setViewName("keyan/jingfei/jingfei_edit");
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
		logBefore(logger, Jurisdiction.getUsername()+"批量删除JINGFEI");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		pd = this.getPageData();
		List<PageData> pdList = new ArrayList<PageData>();
		String DATA_IDS = pd.getString("DATA_IDS");
		if(null != DATA_IDS && !"".equals(DATA_IDS)){
			String ArrayDATA_IDS[] = DATA_IDS.split(",");
			jingfeiService.deleteAll(ArrayDATA_IDS);
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
		logBefore(logger, Jurisdiction.getUsername()+"导出JINGFEI到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<String> titles = new ArrayList<String>();
		titles.add("图书资料费");	//1
		titles.add("数据采集费");	//2
		titles.add("会议费");	//3
		titles.add("专家咨询与评审费");	//4
		titles.add("助研津贴和劳务费");	//5
		titles.add("印刷和出版费");	//6
		titles.add("调研差旅费");	//7
		titles.add("国际合作交流费");	//8
		titles.add("设备购置和使用费");	//9
		titles.add("间接费用");	//10
		titles.add("间接费用备注");	//11
		titles.add("其他费用");	//12
		titles.add("其他费用备注");	//13
		titles.add("总经费");	//14
		titles.add("所属项目id");	//15
		dataMap.put("titles", titles);
		List<PageData> varOList = jingfeiService.listAll(pd);
		List<PageData> varList = new ArrayList<PageData>();
		for(int i=0;i<varOList.size();i++){
			PageData vpd = new PageData();
			vpd.put("var1", varOList.get(i).get("TUSHU").toString());	//1
			vpd.put("var2", varOList.get(i).get("SHUJU").toString());	//2
			vpd.put("var3", varOList.get(i).get("HUIYI").toString());	//3
			vpd.put("var4", varOList.get(i).get("ZHUANJIAZIXUN").toString());	//4
			vpd.put("var5", varOList.get(i).get("ZHUYANJINGTIE").toString());	//5
			vpd.put("var6", varOList.get(i).get("YINSHUA").toString());	//6
			vpd.put("var7", varOList.get(i).get("CHAILU").toString());	//7
			vpd.put("var8", varOList.get(i).get("GUOJIJIAOLIUHEZUO").toString());	//8
			vpd.put("var9", varOList.get(i).get("SHEBEI").toString());	//9
			vpd.put("var10", varOList.get(i).get("JIANJIEFEIYONG").toString());	//10
			vpd.put("var11", varOList.get(i).getString("JIANJIEZBZ"));	    //11
			vpd.put("var12", varOList.get(i).get("QITAFEIYONG").toString());	//12
			vpd.put("var13", varOList.get(i).getString("QITAFEIYONGBZ"));	    //13
			vpd.put("var14", varOList.get(i).get("ZONGJINGFEI").toString());	//14
			vpd.put("var15", varOList.get(i).getString("XIANGMUID"));	    //15
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
