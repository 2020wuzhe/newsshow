package com.dao;

import java.util.List;

import com.pojo.News;
import com.utils.DbUtil;

public class NewsDao {
	private DbUtil dbUtil = new DbUtil();

	public List<News> getAll() {
		List<News> collect = dbUtil.list("select * from news", null);
		return collect;

	}
}
