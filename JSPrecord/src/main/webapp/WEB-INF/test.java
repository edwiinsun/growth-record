/*
 * @Author: @Edwin
 * @Date: 2021-05-05 19:57:43
 * @LastEditors: @Edwin
 * @LastEditTime: 2021-05-05 19:58:55
 * @FilePath: \growth-record\JSPrecord\src\main\webapp\WEB-INF\test.java
 */
package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Jdbc.JdbcUtil;
import vo.Stu;

public class SelAll {
	
	public List<Stu> StuselAll() throws Exception
	{
		List<Stu> students=new ArrayList<Stu>();
		Connection connection=JdbcUtil.getConnection();
		String sql="select * from stu_info ";
		PreparedStatement pstmt=connection.prepareStatement(sql);
		ResultSet rs= pstmt.executeQuery();
		while(rs.next())
		{
			Stu stu =new Stu();
			stu.setId(rs.getInt("id"));
			stu.setSex(rs.getString("sex"));
			stu.setAge(rs.getInt("age"));
			stu.setName(rs.getString("name"));
			stu.setWeight(rs.getDouble("weight"));
			stu.setHight(rs.getDouble("hight"));
			students.add(stu);
		}
		JdbcUtil.free(rs, pstmt, connection);
		return students;
	}

}


