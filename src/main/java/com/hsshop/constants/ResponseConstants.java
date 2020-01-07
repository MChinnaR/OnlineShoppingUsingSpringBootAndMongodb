package com.hsshop.constants;

import java.util.LinkedHashMap;

import org.springframework.stereotype.Service;

@Service("responseConstants")
public class ResponseConstants {

	private static final long SUCCESS_CODE = 200;
	private static final long ERROR_CODE = 500;
	private static final String ERROR_MESSAGE = "Login Credentials Are Wrong";
	private static final String SUCCESS_MESSAGE = "Successfully Logedin";
	public static final LinkedHashMap<String,Integer> items=new LinkedHashMap<String,Integer>();
}
