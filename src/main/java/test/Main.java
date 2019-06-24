package test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class Main {
    public static void main(String[] args) {
        //621 7858 0000 521414 02
        String str = "621";
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String strDate = simpleDateFormat.format(new Date());
        String[] arr = strDate.split(" ");
        String[] strings1 = arr[0].split("-");
        String[] strings2 =arr[1].split(":");
        for (String s : strings1) str+=s;
        str+="00";
        for (String s : strings2) str+=s;
        System.out.println(str);
        System.out.println(str.length());
//        System.out.println(UUID.randomUUID().toString());
    }
}
