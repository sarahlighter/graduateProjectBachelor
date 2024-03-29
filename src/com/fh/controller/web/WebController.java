package com.fh.controller.web;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.service.keyan.lunwen.LUNWENManager;
import com.fh.service.system.role.RoleManager;
import com.fh.service.system.user.UserManager;
import com.fh.service.web.leavemsg.LeavemsgManager;
import com.fh.service.web.news.NewsManager;
import com.fh.util.AppUtil;
import com.fh.util.Const;
import com.fh.util.PageData;
import com.fh.util.Tools;

/** 
 * 说明：访问首页
 */
@Controller
@RequestMapping(value="/web")
public class WebController extends BaseController {

	@Resource(name="leavemsgService")
	private LeavemsgManager leavemsgService;
	@Resource(name="newsService")
	private NewsManager newsService;
	@Resource(name="lunwenService")
	private LUNWENManager lunwenService;
	@Resource(name="userService")
	private UserManager userService;
	@Resource(name="roleService")
	private RoleManager roleService;
	
	
	/**访问首页
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/index")
	public ModelAndView toindex()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("SYSNAME", Tools.readTxtFile(Const.SYSNAME)); //读取系统名称
		
		mv.setViewName("web/index");
		mv.addObject("pd",pd);
		return mv;
	}
	
	/**保存访客留言
	 * @return
	 */
	@RequestMapping(value="/saveLeavemsg")
	@ResponseBody
	public Object saveLeavemsg(){
		Map<String,Object> map = new HashMap<String,Object>();
		PageData pd = new PageData();
		pd = this.getPageData();
		String result = "00";
		try{
			pd.put("LEAVEMSG_ID", this.get32UUID());		//主键
			pd.put("CTIME", Tools.date2Str(new Date()));	//提交时间
			leavemsgService.save(pd);
		}catch (Exception e){
			logger.error(e.toString(), e);
		}finally{
			map.put("result", result);
			logAfter(logger);
		}
		return AppUtil.returnObject(new PageData(), map);
	}
	
	/**获取新闻详情
	 * @return
	 */
	@RequestMapping(value="/getNew")
	@ResponseBody
	public Object getNew(){
		Map<String,Object> map = new HashMap<String,Object>();
		PageData pd = new PageData();
		pd = this.getPageData();
		String result = "00";
		try{
			pd.put("NEWS_ID", pd.getString("NEWID"));
			pd = newsService.findById(pd);	//根据ID读取
		}catch (Exception e){
			logger.error(e.toString(), e);
		}finally{
			map.put("result", result);
			logAfter(logger);
		}
		map.put("new", pd);
		return AppUtil.returnObject(new PageData(), map);
	}
	
	/**获取论文详情
	 * @return
	 */
	@RequestMapping(value="/getKeyan")
	@ResponseBody
	public Object getKeyan(){
		Map<String,Object> map = new HashMap<String,Object>();
		PageData pd = new PageData();
		pd = this.getPageData();
		String result = "00";
		try{
			pd.put("LUNWEN_ID", pd.getString("LUNWEN_ID"));
			pd = lunwenService.findById(pd);	//根据ID读取
		}catch (Exception e){
			logger.error(e.toString(), e);
		}finally{
			map.put("result", result);
			logAfter(logger);
		}
		map.put("new", pd);
		return AppUtil.returnObject(new PageData(), map);
	}
	/**获取论文详情
	 * @return
	 */
	@RequestMapping(value="/getTeam")
	@ResponseBody
	public Object getTeam(){
		Map<String,Object> map = new HashMap<String,Object>();
		PageData pd = new PageData();
		pd = this.getPageData();
		String result = "00";
		try{
			pd.put("USER_ID", pd.getString("USER_ID"));
			pd = userService.findById(pd);	//根据ID读取
		}catch (Exception e){
			logger.error(e.toString(), e);
		}finally{
			map.put("result", result);
			logAfter(logger);
		}
		map.put("new", pd);
		return AppUtil.returnObject(new PageData(), map);
	}
	
}
