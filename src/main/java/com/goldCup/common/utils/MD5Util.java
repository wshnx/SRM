package com.goldCup.common.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Util {
	public static String encodeByMD5(String str, boolean isUpper, MD5Type md5Type) {
		return  md5Type == MD5Type.MD5_16?encodeByMD5(str,isUpper).substring(8, 24):encodeByMD5(str,isUpper);
	}
	public static String encodeByMD5(String str) {
		String result = "";
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(str.getBytes());
			byte b[] = md.digest();
			int i;
			StringBuffer buf = new StringBuffer("");
			for (int offset = 0; offset < b.length; offset++) {
				i = b[offset];
				if (i < 0)
					i += 256;
				if (i < 16)
					buf.append("0");
				buf.append(Integer.toHexString(i));
			}
			result = buf.toString();
			return result;

		} catch (NoSuchAlgorithmException e) {
			return e.getMessage();
		}
	}
	public static String encodeByMD5(String str, boolean isUpper) {
		return isUpper ? encodeByMD5(str).toUpperCase() : encodeByMD5(str);
	}
	public static String encodeByMD5(String str,MD5Type md5Type){
		return md5Type == MD5Type.MD5_16 ? encodeByMD5(str).substring(8, 24):encodeByMD5(str);
	}
}
