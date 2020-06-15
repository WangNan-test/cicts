package com.tyinf.cicts.util;

import org.junit.jupiter.api.Test;

import java.util.UUID;

public class UserNameUtil {
    public static String getUname(){
        return UUID.randomUUID().toString();
    }

}
