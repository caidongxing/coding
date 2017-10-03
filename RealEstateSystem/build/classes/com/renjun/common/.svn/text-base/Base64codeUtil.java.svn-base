package com.renjun.common;

import sun.misc.BASE64Encoder; 
import sun.misc.BASE64Decoder; 
/**   
 * 类名称：Base64codeUtil   </br>
 * 类描述：对字符串进行编码/解码，防止传输过程中的中文乱码问题   </br>
 * 创建人：杰赛科技-方坚 </br>
 * 创建时间：2014年11月17日 上午11:03:46   </br>
 */
class Base64codeUtil {
	
	// 将 s 进行 BASE64 编码
	public static String getBASE64(String s) { 
		if (s == null) return null; 
		return (new sun.misc.BASE64Encoder()).encode(s.getBytes()); 
	} 
	
	// 将 BASE64 编码的字符串 s 进行解码 
	public static String getFromBASE64(String s) { 
		if (s == null) return null; 
		BASE64Decoder decoder = new BASE64Decoder(); 
		try { 
			byte[] b = decoder.decodeBuffer(s); 
			return new String(b); 
		} catch (Exception e) { 
			return null; 
		} 
	} 
	public static void main(String[] args) {
		System.out.println(Base64codeUtil.getBASE64("方坚"));
		String base64 = "5pa55Z2a";
		System.out.println(Base64codeUtil.getFromBASE64(base64));
	}
}

