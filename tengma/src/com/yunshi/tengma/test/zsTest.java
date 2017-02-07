package com.yunshi.tengma.test;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;

import com.jfinal.kit.JsonKit;

public class zsTest {
	@Test
	public void zstest() {
		Map<String,String[]> rs = new HashMap<String, String[]>();
		rs.put("aa", new String[]{"1"});
		rs.put("bb", new String[]{"2","3"});
		System.out.println(JsonKit.toJson(rs));
	}
}
