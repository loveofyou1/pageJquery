package com;

import redis.clients.jedis.Jedis;

public class Test {
    public static void main(String[] args) {
        String str = "111\n" +
                "222";

        String[] strs = str.split("\n");
        if (strs != null && strs.length > 0) {
            for (String a : strs) {
                System.out.println(a);
            }
        }

        Jedis jedis = new Jedis();
        jedis.sadd("a", "b");
        System.out.println(jedis.spop("a"));
    }
}
