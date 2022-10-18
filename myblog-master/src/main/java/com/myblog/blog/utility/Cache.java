package com.myblog.blog.utility;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/**
 * ClassName:Cache
 * Package:com.myblog.blog.utility
 * Description:
 *
 * @Date:2022/3/19 21:04
 * @com.chuangmei
 */
public class Cache {
    /**
     * 键值对集合
     */
    private final static ConcurrentHashMap<String, List<String>> MAP = new ConcurrentHashMap<>();
    /**
     * 添加缓存
     */
    public synchronized static void put(String key, List<String> data) {
        //清除原键值对
        Cache.remove(key);
        //不设置过期时间
        MAP.put(key, data);
    }
    /**
     * 读取缓存
     */
    public static List<String> get(String key) {
        return MAP.get(key);
    }
    /**
     * 清除缓存
     */
    public synchronized static void remove(String key) {
        MAP.remove(key);
    }
}