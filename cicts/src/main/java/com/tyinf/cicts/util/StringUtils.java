package com.tyinf.cicts.util;

public class StringUtils {
    /**
     * �ж��ַ����ǲ���null�������ǲ���0
     * @param str
     * @return true null ���� ����Ϊ0
     */
    public static boolean isEmpty(String str) {
        return str == null || str.isEmpty();
    }

    /**
     * ��鳤��
     * @param str
     * @param min
     * @param max
     * @return str.length() -> [min,max]
     */
    public static boolean checkLength(String str, int min, int max) {
        if(str.length() >= min && str.length() <= max){
            return true;
        }
        return false;
    }

    /**
     * ��������ʽ
     * @param email
     * @return
     */
    public static boolean isEmail(String email) {
        String regex = "\\w{2,}@\\w{2,}\\.\\w{2,}";
        return email.matches(regex);
    }
    
    /**
     * ��ȡ�ļ���׺��
     * @param fileName ��Ҫ��ȡ���ļ���
     * @return �����ļ���׺��(����)
     */
    public static String subFileType(String fileName){
    	if(fileName!=null){
    		                               //�����һ���㿪ʼ��ȡ,����
    		return fileName.substring(fileName.lastIndexOf("."));
    	}
    	return "";
    }

}
