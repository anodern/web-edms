package com.anodern.teach;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.*;
import java.util.*;

public class DBConn {
	Connection conn=null;
	// 每页显示的记录数
	private int pageSize = 15;
	
	//构造方法，定义驱动程序连接用户名和密码信息
	DBConn(){
		Connection con=null;
		try {
			Context ctx=new InitialContext();
			DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/teach");
			con=ds.getConnection();
			if(con==null) System.out.println("connection isnull");
		} catch (Exception e){
			String log="Proc "+this.getClass()+" connection failure:\r\n"+e.getMessage()+"\r\n";
			System.out.println(log);
		}
		this.conn=con;
	}
	
	// 关闭对象
	public void close() {
		try {
			if (conn != null) conn.close();
		} catch (SQLException e) {e.printStackTrace();}
	}
	
	private PreparedStatement pstmt = null;
	// 获取语句对象
	private PreparedStatement getPrepareStatement(String sql) {
		try {
			pstmt = conn.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pstmt;
	}
	// 给pstmt的SQL语句设置参数（要求参数以数组形式给出）
	private void setParams(String sql, String[] params) {
		pstmt = this.getPrepareStatement(sql);
		if(params != null){
			for (int i = 0; i < params.length; i++){
				try {
					pstmt.setString(i + 1, params[i]);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	// 执行数据库查询操作时，将返回的结果封装到List对象中
	public List getList(String sql, String[] params){
		List list = new ArrayList();
		try {
			this.setParams(sql, params);
			System.out.println(sql);
			ResultSet rs = pstmt.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			while(rs.next()) {
				Map m = new HashMap();
				for (int i = 1; i <= rsmd.getColumnCount(); i++) {
					String colName = rsmd.getColumnName(i);
					m.put(colName, rs.getString(colName));
				}
				list.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	// 执行数据库查询操作时，将返回的结果封装到List对象中
    public Map getMap(String sql, String[] params){
		List list=getList(sql, params);
		if(list.isEmpty())
			return null;
		else
			return (Map)list.get(0);
	}
	
	// 更新数据库时调用的update方法
	public int update(String sql, String[] params) {
		int recNo = 0;// 表示受影响的记录行数
		try {
			setParams(sql, params);// 根据sql语句和params，设置pstmt对象
			recNo = pstmt.executeUpdate();// 执行更新操作
		} catch (Exception e) {
			e.printStackTrace();
		} /*finally {
			close();
		}*/
		return recNo;
	}
	
	// 执行数据库查询操作时，返回结果的记录总数。
	private int getTotalRows(String sql, String[] params) {
		int totalRows = 0;
		sql = sql.toLowerCase();
		String countSql = "";
		if(sql.contains("group")){
			countSql = "select count(*) from ("+sql+") as tempNum";
		}else{
			countSql = "select count(*) as tempNum "+ sql.substring(sql.indexOf("from"));
		}
		// count中存放总记录数
		String count = (String)getMap(countSql,params).get("tempNum");
		totalRows = Integer.parseInt(count);
		return totalRows;
	}
	
	// 分页显示查询结果时，将当前页中的所有信息封装到PageBean中
	PageBean getPageBean(String sql, String[] params, int curPage){
		String newSql = sql + " limit " + (curPage-1)*pageSize+","+pageSize;
		List data=this.getList(newSql, params);
		PageBean pb=new PageBean();
		pb.setCurPage(curPage);
		pb.setPageSize(pageSize);
		int totalRow=getTotalRows(sql, params);
		pb.setTotalRows(totalRow);
		pb.setTotalPages(totalRow/pageSize+1);
		pb.setData(data);
		return pb;
	}
    
    PageBean getAllAsPage(String sql, String[] params, int curPage){
        List data=this.getList(sql, params);
        PageBean pb=new PageBean();
        pb.setCurPage(curPage);
        pb.setPageSize(pageSize);
        int totalRow=getTotalRows(sql, params);
        pb.setTotalRows(totalRow);
        pb.setTotalPages(totalRow/pageSize+1);
        pb.setData(data);
        return pb;
    }
	
	public PageBean getPage(int curPage, String sql){
		return getPageBean(sql, null, curPage);
	}
	public PageBean getAllPage(int curPage, String sql){
		return getAllAsPage(sql, null, curPage);
	}
	
	public PageBean getAllPage(String sql){
        return getAllAsPage(sql, null, 1);
    }
}