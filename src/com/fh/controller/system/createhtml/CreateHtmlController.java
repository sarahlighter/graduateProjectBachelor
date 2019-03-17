package com.fh.controller.system.createhtml;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fh.controller.base.BaseController;
import com.fh.entity.system.Role;
import com.fh.service.keyan.chengguo.CHENGGUOManager;
import com.fh.service.keyan.jingfei.JINGFEIManager;
import com.fh.service.keyan.lunwen.LUNWENManager;
import com.fh.service.keyan.xiangmu.XIANGMUManager;
import com.fh.service.keyan.zhuanichengguo.ZHUANICHENGGUOManager;
import com.fh.service.system.role.RoleManager;
import com.fh.service.system.user.UserManager;
import com.fh.service.web.aboutus.AboutusManager;
import com.fh.service.web.contactus.ContactusManager;
import com.fh.service.web.cooperation.CooperationManager;
import com.fh.service.web.corporatephilosophy.CorporatephilosophyManager;
import com.fh.service.web.image.ImageManager;
import com.fh.service.web.information.InformationManager;
import com.fh.service.web.news.NewsManager;
import com.fh.service.web.ourbusiness.OurBusinessManager;
import com.fh.util.AppUtil;
import com.fh.util.DelAllFile;
import com.fh.util.Freemarker;
import com.fh.util.Jurisdiction;
import com.fh.util.PageData;
import com.fh.util.PathUtil;

/** 
 * 类名称： 页面静态化
 * @version
 */
@Controller
@RequestMapping(value="/createHtml")
public class CreateHtmlController extends BaseController {
	
	@Resource(name="informationService")
	private InformationManager informationService;
	@Resource(name="imageService")
	private ImageManager imageService;
	@Resource(name="ourbusinessService")
	private OurBusinessManager ourbusinessService;
	@Resource(name="corporatephilosophyService")
	private CorporatephilosophyManager corporatephilosophyService;
	@Resource(name="contactusService")
	private ContactusManager contactusService;
	@Resource(name="aboutusService")
	private AboutusManager aboutusService;
	@Resource(name="cooperationService")
	private CooperationManager cooperationService;
	@Resource(name="newsService")
	private NewsManager newsService;
	@Resource(name="lunwenService")
	private LUNWENManager lunwenService;
	@Resource(name="userService")
	private UserManager userService;
	@Resource(name="roleService")
	private RoleManager roleService;
	@Resource(name="zhuanichengguoService")
	private ZHUANICHENGGUOManager zhuanichengguoService;
	@Resource(name="jingfeiService")
	private JINGFEIManager jingfeiService;
	@Resource(name="xiangmuService")
	private XIANGMUManager xiangmuService;
	@Resource(name="chengguoService")
	private CHENGGUOManager chengguoService;
	/**生成首页html
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/proHome")
	@ResponseBody
	public Object proCode(HttpServletResponse response) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"执行页面静态化");
		Map<String,Object> map = new HashMap<String,Object>();
		Map<String,Object> root = new HashMap<String,Object>();		//创建数据模型
		String ftlPath = "createHtml";								//ftl路径
		this.getInfo(root);				//网站基本信息
		this.getCp(root);				//公司理念
		this.getOurbusiness(root);		//我们的业务
		this.getImg(root,"1");			//首页轮播图
		this.getImg(root,"2");			//科研成果
		this.getImg(root,"3");			//合作伙伴
		this.getImg(root,"4");			//技术团队
		DelAllFile.delFolder(PathUtil.getClasspath()+"index.html"); //生成代码前,先清空之前生成的文件
		Freemarker.printFile("indexTemplate.ftl", root, "index.html", "", ftlPath);
		map.put("result", "success");
		return AppUtil.returnObject(new PageData(), map);
	}
	
	/**生成关于我们页面
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/proAboutus")
	@ResponseBody
	public Object proAboutus(HttpServletResponse response) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"执行页面静态化");
		Map<String,Object> map = new HashMap<String,Object>();
		Map<String,Object> root = new HashMap<String,Object>();		//创建数据模型
		String ftlPath = "createHtml";								//ftl路径
		this.getInfo(root);				//网站基本信息
		this.getImg(root,"4");			//技术团队
		PageData pdC = new PageData();
		pdC.put("ABOUTUS_ID", "1");
		pdC = aboutusService.findById(pdC);
		root.put("ABOUTUS", pdC.getString("CONTENT")); //联系我们
		DelAllFile.delFolder(PathUtil.getClasspath()+"webaboutus.html"); //生成代码前,先清空之前生成的文件
		Freemarker.printFile("aboutusTemplate.ftl", root, "webaboutus.html", "", ftlPath);
		map.put("result", "success");
		return AppUtil.returnObject(new PageData(), map);
	}
	
	/**生成产品案例页面
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/proProduct")
	@ResponseBody
	public Object proProduct(HttpServletResponse response) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"执行页面静态化");
		Map<String,Object> map = new HashMap<String,Object>();
		Map<String,Object> root = new HashMap<String,Object>();		//创建数据模型
		String ftlPath = "createHtml";								//ftl路径
		this.getInfo(root);				//网站基本信息
		this.getImg(root,"4");			//技术团队
		this.getImg(root,"5");			//产品案例
		DelAllFile.delFolder(PathUtil.getClasspath()+"webproduct.html"); //生成代码前,先清空之前生成的文件
		Freemarker.printFile("productTemplate.ftl", root, "webproduct.html", "", ftlPath);
		map.put("result", "success");
		return AppUtil.returnObject(new PageData(), map);
	}
	
	/**生成科研展示页面
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/proKeyan")
	@ResponseBody
	public Object proKeyan(HttpServletResponse response) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"执行页面静态化");
		Map<String,Object> map = new HashMap<String,Object>();
		Map<String,Object> root = new HashMap<String,Object>();		//创建数据模型
		String ftlPath = "createHtml";								//ftl路径
		this.getInfo(root);				//网站基本信息
		this.getImg(root,"4");			//技术团队
		this.getKeyan(root);				//科研信息
		DelAllFile.delFolder(PathUtil.getClasspath()+"webkeyan.html"); //生成代码前,先清空之前生成的文件
		Freemarker.printFile("keyanTemplate.ftl", root, "webkeyan.html", "", ftlPath);
		this.proKeyandetail();			//生成科研信息页
		map.put("result", "success");
		return AppUtil.returnObject(new PageData(), map);
	}
	/**生成科研动态详细页面
	 * @param response
	 * @throws Exception
	 */
	public void proKeyandetail() throws Exception{
		Map<String,Object> root = new HashMap<String,Object>();		//创建数据模型
		String ftlPath = "createHtml";								//ftl路径
		this.getInfo(root);				//网站基本信息
		this.getImg(root,"4");			//技术团队
		DelAllFile.delFolder(PathUtil.getClasspath()+"webkeyandetail.html"); //生成代码前,先清空之前生成的文件
		Freemarker.printFile("keyandetailTemplate.ftl", root, "webkeyandetail.html", "", ftlPath);
	}
	/**生成科研团队展示页面
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/proTeam")
	@ResponseBody
	public Object proTeam(HttpServletResponse response) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"执行页面静态化");
		Map<String,Object> map = new HashMap<String,Object>();
		Map<String,Object> root = new HashMap<String,Object>();		//创建数据模型
		String ftlPath = "createHtml";								//ftl路径
		this.getInfo(root);				//网站基本信息
		this.getImg(root,"4");			//技术团队
		this.getTeam(root);				//科研信息
		DelAllFile.delFolder(PathUtil.getClasspath()+"webteam.html"); //生成代码前,先清空之前生成的文件
		Freemarker.printFile("teamTemplate.ftl", root, "webteam.html", "", ftlPath);
		this.proTeamdetail();			//生成科研信息页
		map.put("result", "success");
		return AppUtil.returnObject(new PageData(), map);
	}
	/**生成科研团队成员信息动态详细页面
	 * @param response
	 * @throws Exception
	 */
	public void proTeamdetail() throws Exception{
		Map<String,Object> root = new HashMap<String,Object>();		//创建数据模型
		String ftlPath = "createHtml";								//ftl路径
		this.getInfo(root);				//网站基本信息
		this.getImg(root,"4");			//技术团队
		this.getTeam(root);				//科研信息
		DelAllFile.delFolder(PathUtil.getClasspath()+"webteamdetail.html"); //生成代码前,先清空之前生成的文件
		Freemarker.printFile("teamdetailTemplate.ftl", root, "webteamdetail.html", "", ftlPath);
	}
	
	/**生成团队成果页面
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/proAllwork")
	@ResponseBody
	public Object proAllwork(HttpServletResponse response) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"执行页面静态化");
		Map<String,Object> map = new HashMap<String,Object>();
		Map<String,Object> root = new HashMap<String,Object>();		//创建数据模型
		String ftlPath = "createHtml";								//ftl路径
		this.getInfo(root);				//网站基本信息
		this.getImg(root,"4");			//技术团队
		this.getAllwork(root);				//科研信息
		DelAllFile.delFolder(PathUtil.getClasspath()+"weballwork.html"); //生成代码前,先清空之前生成的文件
		Freemarker.printFile("allworkTemplate.ftl", root, "weballwork.html", "", ftlPath);
		map.put("result", "success");
		return AppUtil.returnObject(new PageData(), map);
	}
	/**生成合作共赢页面
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/proCooperation")
	@ResponseBody
	public Object proCooperation(HttpServletResponse response) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"执行页面静态化");
		Map<String,Object> map = new HashMap<String,Object>();
		Map<String,Object> root = new HashMap<String,Object>();		//创建数据模型
		String ftlPath = "createHtml";								//ftl路径
		this.getInfo(root);				//网站基本信息
		this.getImg(root,"4");			//技术团队
		PageData pdC = new PageData();
		pdC.put("COOPERATION_ID", "1");
		pdC = cooperationService.findById(pdC);
		root.put("cooperation", pdC.getString("CONTENT")); //联系我们
		DelAllFile.delFolder(PathUtil.getClasspath()+"webcooperation.html"); //生成代码前,先清空之前生成的文件
		Freemarker.printFile("cooperationTemplate.ftl", root, "webcooperation.html", "", ftlPath);
		map.put("result", "success");
		return AppUtil.returnObject(new PageData(), map);
	}
	
	/**生成新闻动态页面
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/proNews")
	@ResponseBody
	public Object proNews(HttpServletResponse response) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"执行页面静态化");
		Map<String,Object> map = new HashMap<String,Object>();
		Map<String,Object> root = new HashMap<String,Object>();		//创建数据模型
		String ftlPath = "createHtml";								//ftl路径
		this.getInfo(root);				//网站基本信息
		this.getImg(root,"4");			//技术团队
		this.getNews(root);				//新闻列表
		DelAllFile.delFolder(PathUtil.getClasspath()+"webnews.html"); //生成代码前,先清空之前生成的文件
		Freemarker.printFile("newsTemplate.ftl", root, "webnews.html", "", ftlPath);
		this.proNewsdetail();			//生成新闻明细页
		map.put("result", "success");
		return AppUtil.returnObject(new PageData(), map);
	}
	
	/**生成新闻动态详细页面
	 * @param response
	 * @throws Exception
	 */
	public void proNewsdetail() throws Exception{
		Map<String,Object> root = new HashMap<String,Object>();		//创建数据模型
		String ftlPath = "createHtml";								//ftl路径
		this.getInfo(root);				//网站基本信息
		this.getImg(root,"4");			//技术团队
		DelAllFile.delFolder(PathUtil.getClasspath()+"webnewsdetail.html"); //生成代码前,先清空之前生成的文件
		Freemarker.printFile("newsdetailTemplate.ftl", root, "webnewsdetail.html", "", ftlPath);
	}
	
	/**生成联系我们页面
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/proContactus")
	@ResponseBody
	public Object proContactus(HttpServletResponse response) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"执行页面静态化");
		Map<String,Object> map = new HashMap<String,Object>();
		Map<String,Object> root = new HashMap<String,Object>();		//创建数据模型
		String ftlPath = "createHtml";								//ftl路径
		this.getInfo(root);				//网站基本信息
		this.getImg(root,"4");			//技术团队
		PageData pdC = new PageData();
		pdC.put("CONTACTUS_ID", "1");
		pdC = contactusService.findById(pdC);
		root.put("CONTACTUS", pdC.getString("CONTENT")); //联系我们
		DelAllFile.delFolder(PathUtil.getClasspath()+"webcontactus.html"); //生成代码前,先清空之前生成的文件
		Freemarker.printFile("contactusTemplate.ftl", root, "webcontactus.html", "", ftlPath);
		map.put("result", "success");
		return AppUtil.returnObject(new PageData(), map);
	}
	
	
	/** 获取科研论文信息
	 * @param root
	 * @throws Exception
	 */
	public void getKeyan(Map<String,Object> root) throws Exception{
		PageData pdkeyan = new PageData();
		List<PageData>  lunwenList=lunwenService.listAll(pdkeyan);
		List<String[]> fieldList = new ArrayList<String[]>(); 
		for(int i=0;i<lunwenList.size();i++){
			String[] array = new String[11]; 
			array[0] = lunwenList.get(i).getString("LUNWEN_ID");		//ID
			array[1] = lunwenList.get(i).getString("LWNAME");		//论文名
			array[2] = lunwenList.get(i).getString("ENAME");			//论文英文名
			array[3] = lunwenList.get(i).getString("PUNLISHDATE");		//出版日期
			array[4] = lunwenList.get(i).getString("FIRSTAUTHOR");		//第一作者
			array[5] = lunwenList.get(i).getString("SECONDAUTHOR");	//第二作者
			array[6] = lunwenList.get(i).getString("THIRDAUTHOR");	//第二作者
			array[7] = lunwenList.get(i).getString("OTHERAUTHER");	//其他作者
			array[8] = lunwenList.get(i).getString("SUBJECT");	//所属学科
			array[9] = lunwenList.get(i).getString("PUBLISHER");	//出版商
			array[10] = lunwenList.get(i).getString("FILEPATH");	//文件路径			
			fieldList.add(array);
		}
		root.put("lunwenList", fieldList);	
	}
	/** 获取科研团队成员信息
	 * @param root
	 * @throws Exception
	 */
	public void getTeam(Map<String,Object> root) throws Exception{
		PageData pd = new PageData();
		List<PageData> userList = userService.listAllUser(pd);
		pd.put("ROLE_ID", "1");
		List<Role> roleList = roleService.listAllRolesByPId(pd);	//列出所有系统用户角色		
		
		List<String[]> fieldList = new ArrayList<String[]>(); 
		List<String[]> fieldList2 = new ArrayList<String[]>();
	
		
		for(int i=0;i<userList.size();i++){
			String[] array = new String[12]; 
			array[0] = userList.get(i).getString("USER_ID");		//ID
			array[1] = userList.get(i).getString("NAME");		//姓名
			array[2] = userList.get(i).getString("ROLE_ID");			//角色id
			array[3] = userList.get(i).getString("BZ");		//备注
			array[4] = userList.get(i).getString("NUMBER");		//编号
			array[5] = userList.get(i).getString("PHONE");	//电话号
			array[6] = userList.get(i).getString("XUELI");	//学历			
			array[7] = userList.get(i).getString("FANGXIANG");	//研究方向
			array[8] = userList.get(i).getString("AGE");	//年龄		
			array[9] = userList.get(i).getString("ZHICHENG");	//职称	
			array[10] = userList.get(i).getString("SEX");	//性别
			array[11] = userList.get(i).getString("XSJZ");	//学术兼职
			fieldList.add(array);
		}
		
		List<PageData>  lunwenList=lunwenService.listAll(pd);
		List<String[]> fieldList3 = new ArrayList<String[]>(); 
		for(int i=0;i<lunwenList.size();i++){
			String[] array = new String[11]; 
			array[0] = lunwenList.get(i).getString("LUNWEN_ID");		//ID
			array[1] = lunwenList.get(i).getString("LWNAME");		//论文名
			array[2] = lunwenList.get(i).getString("ENAME");			//论文英文名
			array[3] = lunwenList.get(i).getString("PUNLISHDATE");		//出版日期
			array[4] = lunwenList.get(i).getString("FIRSTAUTHOR");		//第一作者
			array[5] = lunwenList.get(i).getString("SECONDAUTHOR");	//第二作者
			array[6] = lunwenList.get(i).getString("THIRDAUTHOR");	//第二作者
			array[7] = lunwenList.get(i).getString("OTHERAUTHER");	//其他作者
			array[8] = lunwenList.get(i).getString("SUBJECT");	//所属学科
			array[9] = lunwenList.get(i).getString("PUBLISHER");	//出版商
			array[10] = lunwenList.get(i).getString("FILEPATH");	//文件路径			
			fieldList3.add(array);
		}
		root.put("lunwenList", fieldList3);	
				
		root.put("roleList", fieldList2);	
		root.put("userList", fieldList);	
	}
	/** 获取所有成果信息
	 * @param root
	 * @throws Exception
	 */
	public void getAllwork(Map<String,Object> root) throws Exception{
		PageData pd = new PageData();
		List<PageData>  lunwenList=lunwenService.listAll(pd);
		List<PageData>  zhuanichengguo=zhuanichengguoService.listAll(pd);
		List<PageData>  jingfei=jingfeiService.listAll(pd);
		List<PageData>  chengguo=chengguoService.listAll(pd);
		List<PageData>  xiangmu=xiangmuService.listAll(pd);
		List<String[]> fieldList = new ArrayList<String[]>(); 
		for(int i=0;i<lunwenList.size();i++){
			String[] array = new String[11]; 
			array[0] = lunwenList.get(i).getString("LUNWEN_ID");		//ID
			array[1] = lunwenList.get(i).getString("LWNAME");		//论文名
			array[2] = lunwenList.get(i).getString("ENAME");			//论文英文名
			array[3] = lunwenList.get(i).getString("PUNLISHDATE");		//出版日期
			array[4] = lunwenList.get(i).getString("FIRSTAUTHOR");		//第一作者
			array[5] = lunwenList.get(i).getString("SECONDAUTHOR");	//第二作者
			array[6] = lunwenList.get(i).getString("THIRDAUTHOR");	//第二作者
			array[7] = lunwenList.get(i).getString("OTHERAUTHER");	//其他作者
			array[8] = lunwenList.get(i).getString("SUBJECT");	//所属学科
			array[9] = lunwenList.get(i).getString("PUBLISHER");	//出版商
			array[10] = lunwenList.get(i).getString("FILEPATH");	//文件路径			
			fieldList.add(array);
		}				
		root.put("lunwenList", fieldList);	
		List<String[]> fieldList1 = new ArrayList<String[]>(); 
		for(int i=0;i<zhuanichengguo.size();i++){
			String[] array = new String[3]; 
			array[0] = zhuanichengguo.get(i).getString("ZHUANICHENGGUO_ID");		//ID
			array[1] = zhuanichengguo.get(i).getString("ZHUANLIHAO");		//专利号
			array[2] = zhuanichengguo.get(i).getString("ZHUANLINAME");			//专利名	
			fieldList1.add(array);
		}				
		root.put("zhuanichengguolist", fieldList1);		
		List<String[]> fieldList2 = new ArrayList<String[]>(); 
		for(int i=0;i<xiangmu.size();i++){
			String[] array = new String[4]; 
			array[0] = xiangmu.get(i).getString("XIANGMU_ID");		//ID
			array[1] = xiangmu.get(i).getString("XMNAME");		//项目名称
			array[2] = xiangmu.get(i).getString("LAIYUAN");		//项目来源
			array[3] = xiangmu.get(i).getString("XINGZHI");		//项目性质	
			fieldList2.add(array);
		}				
		root.put("xiangmuList", fieldList2);
		List<String[]> fieldList3 = new ArrayList<String[]>(); 
		for(int i=0;i<chengguo.size();i++){
			String[] array = new String[2]; 
			array[0] = chengguo.get(i).getString("CHENGGUO_ID");		//ID
			array[1] = chengguo.get(i).getString("CGNAME");		//成果名		
			fieldList3.add(array);
		}				
		root.put("chengguoList", fieldList3);	
	}
	
	/** 获取新闻列表
	 * @param root
	 * @throws Exception
	 */
	public void getNews(Map<String,Object> root) throws Exception{
		PageData pdNews = new PageData();
		List<PageData> listNews = newsService.listAll(pdNews);
		List<String[]> fieldList = new ArrayList<String[]>(); 
		for(int i=0;i<listNews.size();i++){
			String[] array = new String[6]; 
			array[0] = listNews.get(i).getString("NEWS_ID");		//ID
			array[1] = listNews.get(i).getString("TITLE");			//标题
			array[2] = listNews.get(i).getString("CTIME");			//发表时间
			array[3] = listNews.get(i).getString("STEMFROM");		//来源
			array[4] = listNews.get(i).getString("IMAGE");			//图片
			array[5] = listNews.get(i).getString("SHORTCONTENT");	//简述
			fieldList.add(array);
		}
		root.put("listNews", fieldList);	
	}
	
	/** 图片
	 * @param root
	 * @throws Exception
	 */
	public void getImg(Map<String,Object> root, String TYPE) throws Exception{
		PageData pdImg = new PageData();
		pdImg.put("TYPE", TYPE);
		List<PageData> listImg1 = imageService.listAll(pdImg);
		List<String[]> fieldList = new ArrayList<String[]>(); 
		for(int i=0;i<listImg1.size();i++){
			String[] array = new String[4]; 
			array[0] = listImg1.get(i).getString("TITLE");	//图片标题
			array[1] = listImg1.get(i).getString("IMGURL");	//图片地址
			array[2] = listImg1.get(i).getString("TOURL");	//图片链接
			array[3] = listImg1.get(i).getString("BZ");		//图片备注
			fieldList.add(array);
		}
		root.put("fieldList"+TYPE, fieldList);	
	}
	
	/** 网站基本信息
	 * @param root
	 * @throws Exception
	 */
	public void getInfo(Map<String,Object> root) throws Exception{
		PageData pdInfo = new PageData();
		pdInfo.put("INFORMATION_ID", "1");
		pdInfo = informationService.findById(pdInfo);
		root.put("NAME", pdInfo.getString("NAME"));					//网站名称
		root.put("TITLE", pdInfo.getString("TITLE"));				//网站标题
		root.put("KEYWORDS", pdInfo.getString("KEYWORDS"));			//网站关键词
		root.put("DESCRIPTION", pdInfo.getString("DESCRIPTION"));	//网站描述
		root.put("LOGO", pdInfo.getString("LOGO"));					//LOGO
		root.put("TEL", pdInfo.getString("TEL"));					//电话
		root.put("EMAIL", pdInfo.getString("EMAIL"));				//邮箱
		root.put("QQ", pdInfo.getString("QQ"));						//QQ
		root.put("FAX", pdInfo.getString("FAX"));					//传真
		root.put("WEBURL", pdInfo.getString("WEBURL"));				//官网
		root.put("ADDRESS", pdInfo.getString("ADDRESS"));			//地址
		root.put("COPYRIGHT", pdInfo.getString("COPYRIGHT"));		//版权
		root.put("TECHNOLOGY", pdInfo.getString("TECHNOLOGY"));		//技术支持
		root.put("BEIAN", pdInfo.getString("BEIAN"));				//备案
		root.put("ABOUTUS1", pdInfo.getString("ABOUTUS1"));			//关于我们上
		root.put("ABOUTUS2", pdInfo.getString("ABOUTUS2"));			//关于我们下
		root.put("NEW1", pdInfo.getString("NEW1"));					//最新消息1
		root.put("NEW2", pdInfo.getString("NEW2"));					//最新消息2
	}
	
	/** 网站首页我们的业务
	 * @param root
	 * @throws Exception
	 */
	public void getOurbusiness(Map<String,Object> root) throws Exception{
		PageData pdOb = new PageData();
		pdOb.put("OURBUSINESS_ID", "1");
		pdOb = ourbusinessService.findById(pdOb);
		root.put("TITLE1", pdOb.getString("TITLE1"));				//介绍上
		root.put("TITLE2", pdOb.getString("TITLE2"));				//介绍下
		root.put("CONTENT1", pdOb.getString("CONTENT1"));			//内容上
		root.put("CONTENT2", pdOb.getString("CONTENT2"));			//内容上
		root.put("TOURL", pdOb.getString("TOURL"));					//内容链接
	}
	
	/** 公司理念
	 * @param root
	 * @throws Exception
	 */
	public void getCp(Map<String,Object> root) throws Exception{
		for(int i=1;i<5;i++){
			PageData pdCp = new PageData();
			pdCp.put("CORPORATEPHILOSOPHY_ID", i);
			pdCp = corporatephilosophyService.findById(pdCp);
			root.put("CPTITLE"+i, pdCp.getString("TITLE"));		//标题
			root.put("CPCONTENT"+i, pdCp.getString("CONTENT"));	//内容
			root.put("CPTOURL"+i, pdCp.getString("TOURL"));		//链接
		}
	}
	
}
//FHQ 3 1 3 5 9 6 7 9 0