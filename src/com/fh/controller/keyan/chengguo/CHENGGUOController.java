package com.fh.controller.keyan.chengguo;

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
import com.fh.service.keyan.chengguo.CHENGGUOManager;
import com.fh.service.keyan.xiangmu.XIANGMUManager;
import com.fh.service.system.user.UserManager;

/** 
 * 说明：项目成果
 */
@Controller
@RequestMapping(value="/chengguo")
public class CHENGGUOController extends BaseController {
	
	String menuUrl = "chengguo/list.do"; //菜单地址(权限用)
	@Resource(name="chengguoService")
	private CHENGGUOManager chengguoService;
	@Resource(name="xiangmuService")
	private XIANGMUManager xiangmuService;
	@Resource(name="userService")
	private UserManager userService;
	/**保存
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"新增CHENGGUO");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("CHENGGUO_ID", this.get32UUID());	//主键
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		List<PageData>  userList=userService.listAllUser(pd);
		
		chengguoService.save(pd);
		mv.addObject("userList",userList);
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
		logBefore(logger, Jurisdiction.getUsername()+"删除CHENGGUO");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		pd = this.getPageData();
		chengguoService.delete(pd);
		out.write("success");
		out.close();
	}
	
	/**修改
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改CHENGGUO");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		List<PageData>  userList=userService.listAllUser(pd);
		
		chengguoService.edit(pd);
		mv.addObject("userList",userList);
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
		logBefore(logger, Jurisdiction.getUsername()+"列表CHENGGUO");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		page.setPd(pd);
		List<PageData>	varList = chengguoService.list(page);	//列出CHENGGUO列表
		mv.setViewName("keyan/chengguo/chengguo_list");
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		List<PageData>  userList=userService.listAllUser(pd);
		mv.addObject("userList",userList);
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
		mv.setViewName("keyan/chengguo/chengguo_edit");
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		List<PageData>  userList=userService.listAllUser(pd);
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
		pd = chengguoService.findById(pd);	//根据ID读取
		mv.setViewName("keyan/chengguo/chengguo_edit");
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		List<PageData>  userList=userService.listAllUser(pd);
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
		logBefore(logger, Jurisdiction.getUsername()+"批量删除CHENGGUO");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		pd = this.getPageData();
		List<PageData> pdList = new ArrayList<PageData>();
		String DATA_IDS = pd.getString("DATA_IDS");
		if(null != DATA_IDS && !"".equals(DATA_IDS)){
			String ArrayDATA_IDS[] = DATA_IDS.split(",");
			chengguoService.deleteAll(ArrayDATA_IDS);
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
		logBefore(logger, Jurisdiction.getUsername()+"导出CHENGGUO到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<String> titles = new ArrayList<String>();
		titles.add("成果名");	//1
		titles.add("项目负责人");	//2
		titles.add("项目负责人id");	//3
		titles.add("鉴定时间");	//4
		titles.add("鉴定单位");	//5
		titles.add("鉴定编号");	//6
		titles.add("其他参与人员");	//7
		titles.add("审核状态");	//8
		dataMap.put("titles", titles);
		List<PageData> varOList = chengguoService.listAll(pd);
		List<PageData> varList = new ArrayList<PageData>();
		for(int i=0;i<varOList.size();i++){
			PageData vpd = new PageData();
			vpd.put("var1", varOList.get(i).getString("CGNAME"));	    //1
			vpd.put("var2", varOList.get(i).getString("FZNAME"));	    //2
			vpd.put("var3", varOList.get(i).getString("FZID"));	    //3
			vpd.put("var4", varOList.get(i).getString("JDTIME"));	    //4
			vpd.put("var5", varOList.get(i).getString("JDDW"));	    //5
			vpd.put("var6", varOList.get(i).getString("JDNUM"));	    //6
			vpd.put("var7", varOList.get(i).getString("OTHERS"));	    //7
			vpd.put("var8", varOList.get(i).getString("SHZT"));	    //8
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
