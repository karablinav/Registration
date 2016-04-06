package com.unc;

import java.util.HashMap;
import java.util.Map;

public class Users {
    private static Map accounts = new HashMap<>();

    public static void addUser(User user){
        if ((!accounts.containsKey(user.getLogin())) && (user.getPassword() != null) /*&& (!"".equals(acc.getPassword())*/) {
            accounts.put(user.getLogin(), user);
        }
    }

    public static User findUser(String account) {
        return (User) accounts.get(account);
    }


}
