package com.fh.controller.keyan.zhuanichengguo;

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
import com.fh.service.keyan.xiangmu.XIANGMUManager;
import com.fh.service.keyan.zhuanichengguo.ZHUANICHENGGUOManager;
import com.fh.service.system.user.UserManager;

/** 
 * 说明：专利成果
 */
@Controller
@RequestMapping(value="/zhuanichengguo")
public class ZHUANICHENGGUOController extends BaseController {
	
	String menuUrl = "zhuanichengguo/list.do"; //菜单地址(权限用)
	@Resource(name="zhuanichengguoService")
	private ZHUANICHENGGUOManager zhuanichengguoService;
	@Resource(name="userService")
	private UserManager userService;
	@Resource(name="xiangmuService")
	private XIANGMUManager xiangmuService;
	/**保存
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"新增ZHUANICHENGGUO");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("ZHUANICHENGGUO_ID", this.get32UUID());	//主键
		List<PageData>  userList=userService.listAllUser(pd);
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
		mv.addObject("userList",userList);
		mv.addObject("xiangmuList",xiangmuList);
		zhuanichengguoService.save(pd);
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
		logBefore(logger, Jurisdiction.getUsername()+"删除ZHUANICHENGGUO");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		pd = this.getPageData();
		zhuanichengguoService.delete(pd);
		out.write("success");
		out.close();
	}
	
	/**修改
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改ZHUANICHENGGUO");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		zhuanichengguoService.edit(pd);
		List<PageData>  userList=userService.listAllUser(pd);
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
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
		logBefore(logger, Jurisdiction.getUsername()+"列表ZHUANICHENGGUO");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		page.setPd(pd);
		List<PageData>	varList = zhuanichengguoService.list(page);	//列出ZHUANICHENGGUO列表
		List<PageData>  userList=userService.listAllUser(pd);
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);
	
		mv.setViewName("keyan/zhuanichengguo/zhuanichengguo_list");
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
		List<PageData>  userList=userService.listAllUser(pd);
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);

		mv.setViewName("keyan/zhuanichengguo/zhuanichengguo_edit");
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
		pd = zhuanichengguoService.findById(pd);	//根据ID读取
		List<PageData>  userList=userService.listAllUser(pd);
		List<PageData>  xiangmuList=xiangmuService.listAll(pd);

		mv.setViewName("keyan/zhuanichengguo/zhuanichengguo_edit");
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
		logBefore(logger, Jurisdiction.getUsername()+"批量删除ZHUANICHENGGUO");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		pd = this.getPageData();
		List<PageData> pdList = new ArrayList<PageData>();
		String DATA_IDS = pd.getString("DATA_IDS");
		if(null != DATA_IDS && !"".equals(DATA_IDS)){
			String ArrayDATA_IDS[] = DATA_IDS.split(",");
			zhuanichengguoService.deleteAll(ArrayDATA_IDS);
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
		logBefore(logger, Jurisdiction.getUsername()+"导出ZHUANICHENGGUO到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<String> titles = new ArrayList<String>();
		titles.add("专利号");	//1
		titles.add("专利名");	//2
		titles.add("第一发明人ID");	//3
		titles.add("所属项目号");	//4
		titles.add("第二发明人id");	//5
		titles.add("第三发明人id");	//6
		titles.add("第一发明人姓名");	//7
		titles.add("第二发明人姓名");	//8
		titles.add("第三发明人姓名");	//9
		dataMap.put("titles", titles);
		List<PageData> varOList = zhuanichengguoService.listAll(pd);
		List<PageData> varList = new ArrayList<PageData>();
		for(int i=0;i<varOList.size();i++){
			PageData vpd = new PageData();
			vpd.put("var1", varOList.get(i).getString("ZHUANLIHAO"));	    //1
			vpd.put("var2", varOList.get(i).getString("ZHUANLINAME"));	    //2
			vpd.put("var3", varOList.get(i).getString("FAMINGRENID"));	    //3
			vpd.put("var4", varOList.get(i).getString("SUOSHUXIANGMUID"));	    //4
			vpd.put("var5", varOList.get(i).getString("SECONDCID"));	    //5
			vpd.put("var6", varOList.get(i).getString("THIRDID"));	    //6
			vpd.put("var7", varOList.get(i).getString("FIRSTNAME"));	    //7
			vpd.put("var8", varOList.get(i).getString("SECONDNAME"));	    //8
			vpd.put("var9", varOList.get(i).getString("THIRDNAME"));	    //9
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
