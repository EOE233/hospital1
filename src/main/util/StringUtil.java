package util;

import java.text.SimpleDateFormat;

public class StringUtil {

    public static java.sql.Date StringToDate(String sDate) {
        /**
         *str转date方法
         */
        String str = sDate;
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date d = null;
        try {
            d = format.parse(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
        java.sql.Date date = new java.sql.Date(d.getTime());
        return date;
    }
    public static String StringT(String s){
        String substring = s.substring(0, s.indexOf(":"));
        return substring;
    }

}
