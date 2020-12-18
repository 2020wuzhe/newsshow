package com.utils;

import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.pojo.News;

public class DbUtil {

	private static final String URL = "jdbc:mysql://localhost:3306/newshow?useUnicode=true&characterEncoding=utf8";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "123456";

	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			return conn;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

	}

	/**
	 * 增删改通用
	 * 
	 * @param sql
	 * @param params
	 * @return
	 */
	public static boolean update(String sql, Object... params) {
		// TODO Auto-generated method stub
		// 定义标记
		boolean flag = false;
		// 获取连接对象
		Connection conn = DbUtil.getConnection();
		try {
			conn.setAutoCommit(false);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		// 获取操作对象
		PreparedStatement pstm = null;
		try {
			pstm = conn.prepareStatement(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 给SQL语句设置值
		try {
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					pstm.setObject(i + 1, params[i]);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 执行SQL语句
		int state = 0;
		try {
			state = pstm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (state > 0) {
			// 成功 提交事务
			flag = true;
			// 提交事务
			try {
				conn.commit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			// 失败 回滚事务
			flag = false;
			try {
				conn.rollback();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return flag;
	}

	public static List<News> list(String sql, Object... params) {
		Connection conn = getConnection();
		PreparedStatement stat = null;
		List<News> list = new ArrayList<News>();
		try {

			stat = conn.prepareStatement(sql);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					// stat.setString(i, params[i]);
					stat.setObject(i + 1, params[i]);
				}
			}
			ResultSet rs = stat.executeQuery();
			while (rs.next()) {
				/**
				 * public News(Integer id, String title, String content, String
				 * photo, String type) {
				 */
				News stu = new News(rs.getInt("id"), rs.getString("title"), rs.getString("content"),
						rs.getString("photo"), rs.getString("newstype"));
				list.add(stu);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (stat != null)
					stat.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}

}
