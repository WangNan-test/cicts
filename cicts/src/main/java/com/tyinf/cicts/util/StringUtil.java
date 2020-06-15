package com.tyinf.cicts.util;

public class StringUtil {
	public static String subAccount(String str){
		
		return str.subSequence(str.length()-6, str.length()).toString();
	} 
}
