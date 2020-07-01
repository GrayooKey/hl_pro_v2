package com.mobile.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import sun.misc.BASE64Encoder;

import com.common.attach.service.IAttachService;
import com.common.base.controller.BaseController;
import com.common.utils.AESUtils;
import com.common.utils.Common;
import com.urms.subsystem.service.ISubsystemService;
import com.urms.user.service.IUserService;

/**
 * @intruduction 移动端登录
 * @author Dic
 * @Date 2015年12月26日下午1:17:08
 */
@Controller
public class MobileTestController extends BaseController{
	
	@Autowired
	public IUserService userServiceImpl;
	@Autowired
	public ISubsystemService subsystemServiceImpl;
	@Autowired
	public IAttachService attachServiceImpl;
	
	@RequestMapping(value="/mobileTest") 
	public void mobileTest(HttpServletRequest request,HttpServletResponse response) throws Exception {
//		User user = (User)this.getHttpSession().getAttribute("user");
        String content = "signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点signssfd的反对发射点发射点";   
        byte[] data = AESUtils.encrypt(content, Common.AESPassword); 
        BASE64Encoder encoder = new BASE64Encoder(); 
		this.print(encoder.encode(data));
	}
	
	
	public IUserService getUserServiceImpl() {
		return userServiceImpl;
	}

	public void setUserServiceImpl(IUserService userServiceImpl) {
		this.userServiceImpl = userServiceImpl;
	}

}