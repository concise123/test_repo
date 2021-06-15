package com.myproject.user;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserInfoController {
	@Autowired
	UserInfoDao dao;
	
	private static final Logger logger = LoggerFactory.getLogger(UserInfoController.class);
	
		@RequestMapping(value="/userInfo", method=RequestMethod.GET)
		public String getUserInfo(Model model) {
			List<UserInfoDto> list = dao.getUserInfo();
			model.addAttribute("FIRST_USER_ID", list.get(0).getUser_id());
			model.addAttribute("FIRST_USER_NAME", list.get(0).getUser_name());
			return "userInfo";
		}
}
