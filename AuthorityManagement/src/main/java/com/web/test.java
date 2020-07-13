package com.web;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class test {

	/**
	 * 测试配置
	 * @param id
	 * @return
	 */
	@RequestMapping(value="test",method=RequestMethod.POST,produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String test1(@RequestBody String id) {
		System.out.println(id);
		String re="成功";
		return re;
	}
}
