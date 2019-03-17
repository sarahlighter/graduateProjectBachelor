package com.fh.controller.system.user;

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

import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.entity.system.Role;
import com.fh.service.keyan.chengguo.CHENGGUOManager;
import com.fh.service.keyan.jingfei.JINGFEIManager;
import com.fh.service.keyan.lunwen.LUNWENManager;
import com.fh.service.keyan.xiangmu.XIANGMUManager;
import com.fh.service.keyan.zhuanichengguo.ZHUANICHENGGUOManager;
import com.fh.service.system.fhlog.FHlogManager;
import com.fh.service.system.menu.MenuManager;
import com.fh.service.system.role.RoleManager;
import com.fh.service.system.user.UserManager;
import com.fh.util.AppUtil;
import com.fh.util.Const;
import com.fh.util.FileDownload;
import com.fh.util.FileUpload;
import com.fh.util.GetPinyin;
import com.fh.util.Jurisdiction;
import com.fh.util.ObjectExcelRead;
import com.fh.util.PageData;
import com.fh.util.ObjectExcelView;
import com.fh.util.PathUtil;
import com.fh.util.Tools;

/** 
 * 类名称：UserController
 * @version
 */
@Controller
@RequestMapping(value="/user")
public class UserController extends BaseController {
	
	String menuUrl = "user/listUsers.do"; //菜单地址(权限用)
	@Resource(name="userService")
	private UserManager userService;
	@Resource(name="roleService")
	private RoleManager roleService;
	@Resource(name="menuService")
	private MenuManager menuService;
	@Resource(name="fhlogService")
	private FHlogManager FHLOG;
	@Resource(name="lunwenService")
	private LUNWENManager lunwenService;
	@Resource(name="chengguoService")
	private CHENGGUOManager chengguoService;
	@Resource(name="xiangmuService")
	private XIANGMUManager xiangmuService;
	@Resource(name="jingfeiService")
	private JINGFEIManager jingfeiService;
	@Resource(name="zhuanichengguoService")
	private ZHUANICHENGGUOManager zhuanichengguoService;
	
	/**显示用户列表
	 * @param page
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/listUsers")
	public ModelAndView listUsers(Page page)throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		String lastLoginStart = pd.getString("lastLoginStart");	//开始时间
		String lastLoginEnd = pd.getString("lastLoginEnd");		//结束时间
		if(lastLoginStart != null && !"".equals(lastLoginStart)){
			pd.put("lastLoginStart", lastLoginStart+" 00:00:00");
		}
		if(lastLoginEnd != null && !"".equals(lastLoginEnd)){
			pd.put("lastLoginEnd", lastLoginEnd+" 00:00:00");
		} 
		page.setPd(pd);
		List<PageData>	userList = userService.listUsers(page);	//列出用户列表
		pd.put("ROLE_ID", "1");
		List<Role> roleList = roleService.listAllRolesByPId(pd);//列出所有系统用户角色
		List<PageData>  lunwenList=lunwenService.listAll(pd);
		
		mv.setViewName("system/user/user_list");
		mv.addObject("lunwenList",lunwenList);
		mv.addObject("userList", userList);
		mv.addObject("roleList", roleList);
		mv.addObject("pd", pd);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
		return mv;
	}
	
	/**删除用户
	 * @param out
	 * @throws Exception 
	 */
	@RequestMapping(value="/deleteU")
	public void deleteU(PrintWriter out) throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"删除user");
		PageData pd = new PageData();
		pd = this.getPageData();
		userService.deleteU(pd);
		FHLOG.save(Jurisdiction.getUsername(), "删除系统用户："+pd);
		out.write("success");
		out.close();
	}
	
	/**去新增用户页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/goAddU")
	public ModelAndView goAddU()throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("ROLE_ID", "1");
		List<Role> roleList = roleService.listAllRolesByPId(pd);//列出所有系统用户角色
		List<PageData>  lunwenList=lunwenService.listAll(pd);
		mv.addObject("lunwenList",lunwenList);
		mv.setViewName("system/user/user_edit");
		mv.addObject("msg", "saveU");
		mv.addObject("pd", pd);
		mv.addObject("roleList", roleList);
		return mv;
	}
	
	/**保存用户
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/saveU")
	public ModelAndView saveU() throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"新增user");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("USER_ID", this.get32UUID());	//ID 主键
		pd.put("LAST_LOGIN", "");				//最后登录时间
		pd.put("IP", "");						//IP
		pd.put("STATUS", "0");					//状态
		pd.put("SKIN", "default");
		pd.put("RIGHTS", "");		
		pd.put("PASSWORD", new SimpleHash("SHA-1", pd.getString("USERNAME"), pd.getString("PASSWORD")).toString());	//密码加密
		if(null == userService.findByUsername(pd)){	//判断用户名是否存在
			userService.saveU(pd); 					//执行保存
			FHLOG.save(Jurisdiction.getUsername(), "新增系统用户："+pd.getString("USERNAME"));
			mv.addObject("msg","success");
		}else{
			mv.addObject("msg","failed");
		}
		mv.setViewName("save_result");
		return mv;
	}
	
	/**判断用户名是否存在
	 * @return
	 */
	@RequestMapping(value="/hasU")
	@ResponseBody
	public Object hasU(){
		Map<String,String> map = new HashMap<String,String>();
		String errInfo = "success";
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			if(userService.findByUsername(pd) != null){
				errInfo = "error";
			}
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		map.put("result", errInfo);				//返回结果
		return AppUtil.returnObject(new PageData(), map);
	}
	
	/**判断邮箱是否存在
	 * @return
	 */
	@RequestMapping(value="/hasE")
	@ResponseBody
	public Object hasE(){
		Map<String,String> map = new HashMap<String,String>();
		String errInfo = "success";
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			if(userService.findByUE(pd) != null){
				errInfo = "error";
			}
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		map.put("result", errInfo);				//返回结果
		return AppUtil.returnObject(new PageData(), map);
	}
	
	/**判断编码是否存在
	 * @return
	 */
	@RequestMapping(value="/hasN")
	@ResponseBody
	public Object hasN(){
		Map<String,String> map = new HashMap<String,String>();
		String errInfo = "success";
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			if(userService.findByUN(pd) != null){
				errInfo = "error";
			}
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		map.put("result", errInfo);				//返回结果
		return AppUtil.returnObject(new PageData(), map);
	}
	
	/**去修改用户页面(系统用户列表修改)
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/goEditU")
	public ModelAndView goEditU() throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		if("1".equals(pd.getString("USER_ID"))){return null;}		//不能修改admin用户
		pd.put("ROLE_ID", "1");
		List<Role> roleList = roleService.listAllRolesByPId(pd);	//列出所有系统用户角色
		List<PageData>  lunwenList=lunwenService.listAll(pd);
	
		mv.addObject("fx", "user");
		pd = userService.findById(pd);								//根据ID读取
		mv.setViewName("system/user/user_edit");
		mv.addObject("lunwenList",lunwenList);
		mv.addObject("msg", "editU");
		mv.addObject("pd", pd);
		mv.addObject("roleList", roleList);
		return mv;
	}
	
	/**去修改用户页面(个人修改)
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/goEditMyU")
	public ModelAndView goEditMyU() throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		mv.addObject("fx", "head");
		pd.put("ROLE_ID", "1");
		List<Role> roleList = roleService.listAllRolesByPId(pd);	//列出所有系统用户角色
		List<PageData>  lunwenList=lunwenService.listAll(pd);
		
		pd.put("USERNAME", Jurisdiction.getUsername());
		pd = userService.findByUsername(pd);						//根据用户名读取
		mv.setViewName("system/user/user_edit");
		mv.addObject("lunwenList",lunwenList);
		mv.addObject("msg", "editU");
		mv.addObject("pd", pd);
		mv.addObject("roleList", roleList);
		return mv;
	}
	
	/**查看用户
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/view")
	public ModelAndView view() throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		if("admin".equals(pd.getString("USERNAME"))){return null;}	//不能查看admin用户
		pd.put("ROLE_ID", "1");
		List<Role> roleList = roleService.listAllRolesByPId(pd);	//列出所有系统用户角色
		List<PageData>  lunwenList=lunwenService.listAll(pd);
		pd = userService.findByUsername(pd);						//根据ID读取
		mv.setViewName("system/user/user_view");
		mv.addObject("lunwenList",lunwenList);
		mv.addObject("msg", "editU");
		mv.addObject("pd", pd);
		mv.addObject("roleList", roleList);
		return mv;
	}
	
	/**去修改用户页面(在线管理页面打开)
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/goEditUfromOnline")
	public ModelAndView goEditUfromOnline() throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		if("admin".equals(pd.getString("USERNAME"))){return null;}	//不能查看admin用户
		pd.put("ROLE_ID", "1");
		List<Role> roleList = roleService.listAllRolesByPId(pd);	//列出所有系统用户角色
		List<PageData>  lunwenList=lunwenService.listAll(pd);
		
		pd = userService.findByUsername(pd);						//根据ID读取
		mv.setViewName("system/user/user_edit");
		mv.addObject("lunwenList",lunwenList);
		mv.addObject("msg", "editU");
		mv.addObject("pd", pd);
		mv.addObject("roleList", roleList);
		return mv;
	}
	
	/**
	 * 修改用户
	 */
	@RequestMapping(value="/editU")
	public ModelAndView editU() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改ser");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		if(!Jurisdiction.getUsername().equals(pd.getString("USERNAME"))){		//如果当前登录用户修改用户资料提交的用户名非本人
			if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}  //校验权限 判断当前操作者有无用户管理查看权限
			if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限判断当前操作者有无用户管理修改权限
			if("admin".equals(pd.getString("USERNAME")) && !"admin".equals(Jurisdiction.getUsername())){return null;}	//非admin用户不能修改admin
		}else{	//如果当前登录用户修改用户资料提交的用户名是本人，则不能修改本人的角色ID
			pd.put("ROLE_ID", userService.findByUsername(pd).getString("ROLE_ID")); //对角色ID还原本人角色ID
		}
		if(pd.getString("PASSWORD") != null && !"".equals(pd.getString("PASSWORD"))){
			pd.put("PASSWORD", new SimpleHash("SHA-1", pd.getString("USERNAME"), pd.getString("PASSWORD")).toString());
		}
		List<PageData>  lunwenList=lunwenService.listAll(pd);
		
		userService.editU(pd);	//执行修改
		FHLOG.save(Jurisdiction.getUsername(), "修改系统用户："+pd.getString("USERNAME"));
		mv.addObject("lunwenList",lunwenList);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 批量删除
	 * @throws Exception 
	 */
	@RequestMapping(value="/deleteAllU")
	@ResponseBody
	public Object deleteAllU() throws Exception {
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"批量删除user");
		FHLOG.save(Jurisdiction.getUsername(), "批量删除user");
		PageData pd = new PageData();
		Map<String,Object> map = new HashMap<String,Object>();
		pd = this.getPageData();
		List<PageData> pdList = new ArrayList<PageData>();
		String USER_IDS = pd.getString("USER_IDS");
		if(null != USER_IDS && !"".equals(USER_IDS)){
			String ArrayUSER_IDS[] = USER_IDS.split(",");
			userService.deleteAllU(ArrayUSER_IDS);
			pd.put("msg", "ok");
		}else{
			pd.put("msg", "no");
		}
		pdList.add(pd);
		map.put("list", pdList);
		return AppUtil.returnObject(pd, map);
	}
	
	/**导出用户信息到EXCEL
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel() throws Exception{
		FHLOG.save(Jurisdiction.getUsername(), "导出用户信息到EXCEL");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			if(Jurisdiction.buttonJurisdiction(menuUrl, "cha")){
				String keywords = pd.getString("keywords");				//关键词检索条件
				if(null != keywords && !"".equals(keywords)){
					pd.put("keywords", keywords.trim());
				}
				String lastLoginStart = pd.getString("lastLoginStart");	//开始时间
				String lastLoginEnd = pd.getString("lastLoginEnd");		//结束时间
				if(lastLoginStart != null && !"".equals(lastLoginStart)){
					pd.put("lastLoginStart", lastLoginStart+" 00:00:00");
				}
				if(lastLoginEnd != null && !"".equals(lastLoginEnd)){
					pd.put("lastLoginEnd", lastLoginEnd+" 00:00:00");
				} 
				Map<String,Object> dataMap = new HashMap<String,Object>();
				List<String> titles = new ArrayList<String>();
				titles.add("用户名"); 		//1
				titles.add("姓名");			//3
				titles.add("最近登录");			//6
				titles.add("上次登录IP");		//7
				titles.add("邮箱");	//10
				titles.add("员工编号");	//11
				titles.add("电话");	//13
				titles.add("学历");	//14
				titles.add("研究方向");	//15
				titles.add("论文成果");	//16
				titles.add("年龄");	//17
				titles.add("职称");	//18
				titles.add("性别");	//19
				titles.add("学术兼职");	//20

				dataMap.put("titles", titles);
				List<PageData> userList = userService.listAllUser(pd);
				List<PageData> lwlist=lunwenService.listAll(pd);
				List<PageData> varList = new ArrayList<PageData>();
				for(int i=0;i<userList.size();i++){
					PageData vpd = new PageData();
					vpd.put("var1", userList.get(i).getString("USERNAME"));	    //1
					vpd.put("var2", userList.get(i).getString("NAME"));	    //3
					vpd.put("var3", userList.get(i).getString("LAST_LOGIN"));	    //6
					vpd.put("var4", userList.get(i).getString("IP"));	    //7
					vpd.put("var5", userList.get(i).getString("EMAIL"));	    //10
					String NUMBER= userList.get(i).getString("NUMBER");
					vpd.put("var6", NUMBER);	    //11
					vpd.put("var7", userList.get(i).getString("PHONE"));	    //13
					vpd.put("var8", userList.get(i).getString("XUELI"));	    //14
					vpd.put("var9", userList.get(i).getString("FANGXIANG"));	    //15
					String PUBPAPER = userList.get(i).getString("PUBPAPER");//16										
					for(int j=0;j<lwlist.size();j++){
						String FIRSTAUTHORNUM = lwlist.get(j).getString("FIRSTAUTHORNUM");
						String SECONDAUTHERNUM = lwlist.get(j).getString("SECONDAUTHERNUM");
						String THIRDAUTHORNUM = lwlist.get(j).getString("THIRDAUTHORNUM");
					   if(NUMBER.equals(FIRSTAUTHORNUM)||NUMBER.equals(SECONDAUTHERNUM)||NUMBER.equals(THIRDAUTHORNUM) )
						   PUBPAPER = PUBPAPER + "《"+lwlist.get(j).getString("LWNAME")+"》" ;
					}
					vpd.put("var10",  PUBPAPER);
					vpd.put("var11", userList.get(i).getString("AGE"));	    //17
					vpd.put("var12", userList.get(i).getString("ZHICHENG"));	    //18
					String SEX = userList.get(i).getString("SEX");
					if(SEX.equals("1"))
					vpd.put("var13", "男");	    //19
					if(SEX.equals("0"))
						vpd.put("var13", "女");	    //19
						
					vpd.put("var14", userList.get(i).getString("XSJZ"));	    //20
					varList.add(vpd);
				}
				dataMap.put("varList", varList);
				ObjectExcelView erv = new ObjectExcelView();					//执行excel操作
				mv = new ModelAndView(erv,dataMap);
			}
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}

	/**导出单个用户信息到EXCEL
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/persontoExcel")
	public ModelAndView persontoExcel() throws Exception{
		FHLOG.save(Jurisdiction.getUsername(), "导出个人用户信息到EXCEL");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String user_id = pd.getString("USER_ID");				//关键词检索条件
		if(null != user_id && !"".equals(user_id)){
			pd.put("user_id", user_id.trim());
		}
				Map<String,Object> dataMap = new HashMap<String,Object>();
				
				List<PageData> userList = userService.listAllUser(pd);
				List<PageData> lwlist=lunwenService.listAll(pd);
				List<PageData> jingfei=jingfeiService.listAll(pd);
				List<PageData> xiangmu=xiangmuService.listAll(pd);
				List<PageData> chengguo=chengguoService.listAll(pd);
				List<PageData> zhuanli=zhuanichengguoService.listAll(pd);
				List<PageData> varList = new ArrayList<PageData>();
				
				List<String> titles = new ArrayList<String>();
				titles.add("用户名"); 		//1
				titles.add("姓名");			//3
				titles.add("最近登录");			//6
				titles.add("上次登录IP");		//7
				titles.add("邮箱");	//10
				titles.add("员工编号");	//11
				titles.add("电话");	//13
				titles.add("学历");	//14
				titles.add("研究方向");	//15
				titles.add("论文成果");	//16
				titles.add("年龄");	//17
				titles.add("职称");	//18
				titles.add("性别");	//19
				titles.add("学术兼职");	//20		
				dataMap.put("titles", titles);				

				String NUMBER="";
				for(int i=0;i<userList.size();i++){
					if (user_id.equals(userList.get(i).getString("USER_ID")))
					{
					PageData vpd = new PageData();
					vpd.put("var1", userList.get(i).getString("USERNAME"));	    //1
					vpd.put("var2", userList.get(i).getString("NAME"));	    //3
					vpd.put("var3", userList.get(i).getString("LAST_LOGIN"));	    //6
					vpd.put("var4", userList.get(i).getString("IP"));	    //7
					vpd.put("var5", userList.get(i).getString("EMAIL"));	    //10
					NUMBER= userList.get(i).getString("NUMBER");
					vpd.put("var6", NUMBER);	    //11
					vpd.put("var7", userList.get(i).getString("PHONE"));	    //13
					vpd.put("var8", userList.get(i).getString("XUELI"));	    //14
					vpd.put("var9", userList.get(i).getString("FANGXIANG"));	    //15
					String PUBPAPER = userList.get(i).getString("PUBPAPER");//16										
					for(int j=0;j<lwlist.size();j++){
						String FIRSTAUTHORNUM = lwlist.get(j).getString("FIRSTAUTHORNUM");
						String SECONDAUTHERNUM = lwlist.get(j).getString("SECONDAUTHERNUM");
						String THIRDAUTHORNUM = lwlist.get(j).getString("THIRDAUTHORNUM");
					   if(NUMBER.equals(FIRSTAUTHORNUM)||NUMBER.equals(SECONDAUTHERNUM)||NUMBER.equals(THIRDAUTHORNUM) )
						   PUBPAPER = PUBPAPER + "《"+lwlist.get(j).getString("LWNAME")+"》" ;
					}
					vpd.put("var10",  PUBPAPER);
					vpd.put("var11", userList.get(i).getString("AGE"));	    //17
					vpd.put("var12", userList.get(i).getString("ZHICHENG"));	    //18
					String SEX = userList.get(i).getString("SEX");
					if(SEX.equals("1"))
					vpd.put("var13", "男");	    //19
					if(SEX.equals("0"))
					vpd.put("var13", "女");	    //19
						
					vpd.put("var14", userList.get(i).getString("XSJZ"));	    //20
					varList.add(vpd);
					}
				}
				PageData vpd10 = new PageData();
				varList.add(vpd10);	
				PageData vpd1 = new PageData();
				vpd1.put("var1", "承担项目");	    //1
				vpd1.put("var2", "项目名称");	    //3
				vpd1.put("var3", "主要承担方");	    //6
				vpd1.put("var4", "项目来源");	    //7
				vpd1.put("var5", "项目性质");	    //7
				vpd1.put("var6", "开始日期");	    //11
				vpd1.put("var7", "结束日期");	    //13
				vpd1.put("var8", "申请状态");	    //14
				varList.add(vpd1);
				for(int i=0;i<xiangmu.size();i++){	
					if (NUMBER.equals(xiangmu.get(i).getString("FUZEREN")))							
					{	PageData vpd = new PageData();
						vpd.put("var1", "");
						vpd.put("var2", xiangmu.get(i).getString("XMNAME"));	    //1
						vpd.put("var3", xiangmu.get(i).getString("CHENGDAN"));	    //3
						vpd.put("var4", xiangmu.get(i).getString("LAIYUAN"));	    //4
						vpd.put("var5", xiangmu.get(i).getString("XINGZHI"));	    //5
						vpd.put("var6", xiangmu.get(i).getString("STARTDATE"));	    //6
						vpd.put("var7", xiangmu.get(i).getString("JIESHURIQI"));	    //7
						vpd.put("var8", xiangmu.get(i).getString("SHENQINGZT"));	    //8
						varList.add(vpd);
					}
				}
				varList.add(vpd10);	
				PageData vpd2 = new PageData();
				vpd2.put("var1","其他科研成果" );	    //1
				vpd2.put("var2", "成果名");	    //3
				vpd2.put("var3","鉴定时间" );	    //6
				vpd2.put("var4", "鉴定单位");	    //7
				vpd2.put("var5", "鉴定编号");	    //11
				vpd2.put("var6", "审核状态");	    //13
				varList.add(vpd2);			
				for(int i=0;i<chengguo.size();i++){					
					if (NUMBER.equals(chengguo.get(i).getString("FZNAME")))
					{
						PageData vpd = new PageData();
						vpd.put("var1", "");	    //1
						vpd.put("var2", chengguo.get(i).getString("CGNAME"));	    //1						
						vpd.put("var3", chengguo.get(i).getString("JDTIME"));	    //4
						vpd.put("var4", chengguo.get(i).getString("JDDW"));	    //5
						vpd.put("var5", chengguo.get(i).getString("JDNUM"));	    //6
						vpd.put("var6", chengguo.get(i).getString("SHZT"));	    //8
						varList.add(vpd);
					}
				}
				varList.add(vpd10);	
				PageData vpd3 = new PageData();
				vpd3.put("var1", "科研经费成果");	    //1
				vpd3.put("var2", "图书资料费");	    //3
				vpd3.put("var3", "数据采集费");	    //6
				vpd3.put("var4", "会议费");	    //7
				vpd3.put("var5", "专家咨询与评审费");	    //11
				vpd3.put("var6", "助研津贴和劳务费");	    //13
				vpd3.put("var7", "印刷和出版费");	    //13
				vpd3.put("var8", "调研差旅费");	    //13
				vpd3.put("var9", "国际合作交流费");	    //13
				vpd3.put("var10", "设备购置和使用费");	    //13
				vpd3.put("var11", "间接费用");	    //13
				vpd3.put("var12", "间接费用备注");	    //13
				vpd3.put("var13", "其他费用");	    //13
				vpd3.put("var14", "其他费用备注");	    //13
				vpd3.put("var15", "总经费");	    //13
				varList.add(vpd3);	

				for(int j=0;j<xiangmu.size();j++){	
					String xiangmumID="";
					if (NUMBER.equals(xiangmu.get(j).getString("FUZEREN")))							
					{	xiangmumID=xiangmu.get(j).getString("XIANGMU_ID");
					for(int i=0;i<jingfei.size();i++)
					{ 						
							if (xiangmumID.equals(jingfei.get(i).getString("XIANGMUID")))
							{
								PageData vpd = new PageData();
								vpd.put("var1", "");	    //1
								vpd.put("var2", jingfei.get(i).get("TUSHU").toString());	//1
								vpd.put("var3", jingfei.get(i).get("SHUJU").toString());	//2
								vpd.put("var4", jingfei.get(i).get("HUIYI").toString());	//3
								vpd.put("var5", jingfei.get(i).get("ZHUANJIAZIXUN").toString());	//4
								vpd.put("var6", jingfei.get(i).get("ZHUYANJINGTIE").toString());	//5
								vpd.put("var7", jingfei.get(i).get("YINSHUA").toString());	//6
								vpd.put("var8", jingfei.get(i).get("CHAILU").toString());	//7
								vpd.put("var9", jingfei.get(i).get("GUOJIJIAOLIUHEZUO").toString());	//8
								vpd.put("var10", jingfei.get(i).get("SHEBEI").toString());	//9
								vpd.put("var11", jingfei.get(i).get("JIANJIEFEIYONG").toString());	//10
								vpd.put("var12", jingfei.get(i).getString("JIANJIEZBZ"));	    //11
								vpd.put("var13", jingfei.get(i).get("QITAFEIYONG").toString());	//12
								vpd.put("var14", jingfei.get(i).getString("QITAFEIYONGBZ"));	    //13
								vpd.put("var15", jingfei.get(i).get("ZONGJINGFEI").toString());	//14	
								varList.add(vpd);
							}											
					}
					}
				}
				varList.add(vpd10);	
				PageData vpd4 = new PageData();
				vpd4.put("var1", "作者所有论文详细情况");	    //1
				vpd4.put("var2", "论文名");	    //3
				vpd4.put("var3", "论文英文名");	    //6
				vpd4.put("var4", "发刊日期");	    //7
				vpd4.put("var5", "第一作者");	    //11
				vpd4.put("var6", "第二作者");	    //13
				vpd4.put("var7", "第三作者");	    //13
				vpd4.put("var8", "学科门类");	    //13
				vpd4.put("var9", "出版单位");	    //13
				vpd4.put("var10", "期刊号");	    //13
				vpd4.put("var11", "审核状态");	    //13
				vpd4.put("var12", "所属项目");	    //13
				vpd4.put("var13", "通信联络人1（电话）");	    //13
				vpd4.put("var14", "通信联络人2（电话）");	    //13
				vpd4.put("var15", "其他作者");	    //13
				varList.add(vpd4);	

				for(int i=0;i<lwlist.size();i++){		
					String FIRSTAUTHORNUM = lwlist.get(i).getString("FIRSTAUTHORNUM");
					String SECONDAUTHERNUM = lwlist.get(i).getString("SECONDAUTHERNUM");
					String THIRDAUTHORNUM = lwlist.get(i).getString("THIRDAUTHORNUM");
					if(NUMBER.equals(FIRSTAUTHORNUM)||NUMBER.equals(SECONDAUTHERNUM)||NUMBER.equals(THIRDAUTHORNUM) )	
					{
						PageData vpd = new PageData();
						vpd.put("var1","");	    //1
						vpd.put("var2", lwlist.get(i).getString("LWNAME"));	    //1
						vpd.put("var3", lwlist.get(i).getString("ENAME"));	    //2
						vpd.put("var4", lwlist.get(i).getString("PUNLISHDATE"));	    //3
						vpd.put("var5", lwlist.get(i).getString("FIRSTAUTHOR"));	    //4
						vpd.put("var6", lwlist.get(i).getString("SECONDAUTHOR"));	    //5
						vpd.put("var7", lwlist.get(i).getString("THIRDAUTHOR"));	    //6
						vpd.put("var8", lwlist.get(i).getString("SUBJECT"));	    //7
						vpd.put("var9", lwlist.get(i).getString("PUBLISHER"));	    //8
						vpd.put("var10", lwlist.get(i).getString("QIKANHAO"));	    //9
						vpd.put("var11", lwlist.get(i).getString("SHENHEZT"));	    //10
						vpd.put("var12", lwlist.get(i).get("XMID").toString());	//11
						vpd.put("var13", lwlist.get(i).get("LIANLUO1").toString());	//12
						vpd.put("var14", lwlist.get(i).get("LIANLUO2").toString());	//13
						vpd.put("var15", lwlist.get(i).getString("OTHERAUTHER"));	    //14
						varList.add(vpd);
					}
				}
				
				varList.add(vpd10);	
				PageData vpd5 = new PageData();
				vpd5.put("var1", "专利成果详细情况");	    //1
				vpd5.put("var2", "专利号");	    //1
				vpd5.put("var3", "专利名");	    //3
				vpd5.put("var4", "所属项目号");	    //6
				vpd5.put("var5", "第一发明人姓名");	    //7
				vpd5.put("var6", "第二发明人姓名");	    //11
				vpd5.put("var7", "第三发明人姓名");	    //13
				varList.add(vpd5);

				
				dataMap.put("titles", titles);
						for(int i=0;i<zhuanli.size();i++)
						{		
							String FIRSTAUTHORNUM =  zhuanli.get(i).getString("FAMINGRENID");
							String SECONDAUTHERNUM = zhuanli.get(i).getString("SECONDCID");
							String THIRDAUTHORNUM = zhuanli.get(i).getString("THIRDID");
							if (NUMBER.equals(FIRSTAUTHORNUM)||NUMBER.equals(SECONDAUTHERNUM)||NUMBER.equals(THIRDAUTHORNUM))
							{
								PageData vpd = new PageData();
								vpd.put("var1", "");	    //1
								vpd.put("var2", zhuanli.get(i).getString("ZHUANLIHAO"));	    //1
								vpd.put("var3", zhuanli.get(i).getString("ZHUANLINAME"));	    //2								
								for(int j=0;j<xiangmu.size();j++){	
									if (zhuanli.get(i).get("SUOSHUXIANGMUID").toString().equals(xiangmu.get(j).getString("XIANGMU_ID")))							
									{	vpd.put("var4", xiangmu.get(j).getString("XMNAME"));	//5
									}																
								}
								vpd.put("var5", zhuanli.get(i).getString("FIRSTNAME"));	    //7
								vpd.put("var6", zhuanli.get(i).getString("SECONDNAME"));	    //8
								vpd.put("var7", zhuanli.get(i).getString("THIRDNAME"));	    //9
								varList.add(vpd);
							}
						}
				
		
				dataMap.put("varList", varList);
				ObjectExcelView erv = new ObjectExcelView();					//执行excel操作
				mv = new ModelAndView(erv,dataMap);

				return mv;
	}
	
	/**打开上传EXCEL页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/goUploadExcel")
	public ModelAndView goUploadExcel()throws Exception{
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/user/uploadexcel");
		return mv;
	}
	
	/**下载模版
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/downExcel")
	public void downExcel(HttpServletResponse response)throws Exception{
		FileDownload.fileDownload(response, PathUtil.getClasspath() + Const.FILEPATHFILE + "Users2.xls", "Users2.xls");
	}
	
	/**从EXCEL导入到数据库
	 * @param file
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/readExcel")
	public ModelAndView readExcel(
			@RequestParam(value="excel",required=false) MultipartFile file
			) throws Exception{
		FHLOG.save(Jurisdiction.getUsername(), "从EXCEL导入到数据库");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;}
		if (null != file && !file.isEmpty()) {
			String filePath = PathUtil.getClasspath() + Const.FILEPATHFILE;								//文件上传路径
			String fileName =  FileUpload.fileUp(file, filePath, "userexcel");							//执行上传
			List<PageData> listPd = (List)ObjectExcelRead.readExcel(filePath, fileName, 2, 0, 0);		//执行读EXCEL操作,读出的数据导入List 2:从第3行开始；0:从第A列开始；0:第0个sheet
			/*存入数据库操作======================================*/
			pd.put("RIGHTS", "");					//权限
			pd.put("LAST_LOGIN", "");				//最后登录时间
			pd.put("IP", "");						//IP
			pd.put("STATUS", "0");					//状态
			pd.put("SKIN", "default");				//默认皮肤
			pd.put("ROLE_ID", "1");
			List<Role> roleList = roleService.listAllRolesByPId(pd);//列出所有系统用户角色
			pd.put("ROLE_ID", roleList.get(0).getROLE_ID());		//设置角色ID为随便第一个
			/**
			 * var0 :编号
			 * var1 :姓名
			 * var2 :手机
			 * var3 :邮箱
			 * var4 :备注
			 */
			for(int i=0;i<listPd.size();i++){		
				pd.put("USER_ID", this.get32UUID());										//ID
				pd.put("NAME", listPd.get(i).getString("var1"));							//姓名
				
				String USERNAME = GetPinyin.getPingYin(listPd.get(i).getString("var1"));	//根据姓名汉字生成全拼
				pd.put("USERNAME", USERNAME);	
				if(userService.findByUsername(pd) != null){									//判断用户名是否重复
					USERNAME = GetPinyin.getPingYin(listPd.get(i).getString("var1"))+Tools.getRandomNum();
					pd.put("USERNAME", USERNAME);
				}
				pd.put("BZ", listPd.get(i).getString("var4"));								//备注
				if(Tools.checkEmail(listPd.get(i).getString("var3"))){						//邮箱格式不对就跳过
					pd.put("EMAIL", listPd.get(i).getString("var3"));						
					if(userService.findByUE(pd) != null){									//邮箱已存在就跳过
						continue;
					}
				}else{
					continue;
				}
				pd.put("NUMBER", listPd.get(i).getString("var0"));							//编号已存在就跳过
				pd.put("PHONE", listPd.get(i).getString("var2"));							//手机号
				
				pd.put("PASSWORD", new SimpleHash("SHA-1", USERNAME, "123").toString());	//默认密码123
				if(userService.findByUN(pd) != null){
					continue;
				}
				userService.saveU(pd);
			}
			/*存入数据库操作======================================*/
			mv.addObject("msg","success");
		}
		mv.setViewName("save_result");
		return mv;
	}
	
	/**显示用户列表(弹窗选择用)
	 * @param page
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/listUsersForWindow")
	public ModelAndView listUsersForWindow(Page page)throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		String lastLoginStart = pd.getString("lastLoginStart");	//开始时间
		String lastLoginEnd = pd.getString("lastLoginEnd");		//结束时间
		if(lastLoginStart != null && !"".equals(lastLoginStart)){
			pd.put("lastLoginStart", lastLoginStart+" 00:00:00");
		}
		if(lastLoginEnd != null && !"".equals(lastLoginEnd)){
			pd.put("lastLoginEnd", lastLoginEnd+" 00:00:00");
		} 
		page.setPd(pd);
		List<PageData>	userList = userService.listUsersBystaff(page);	//列出用户列表(弹窗选择用)
		pd.put("ROLE_ID", "1");
		List<Role> roleList = roleService.listAllRolesByPId(pd);//列出所有系统用户角色
		mv.setViewName("system/user/window_user_list");
		mv.addObject("userList", userList);
		mv.addObject("roleList", roleList);
		mv.addObject("pd", pd);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
		return mv;
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}

}
