package kr.co.ani;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class AniDAO {
 public DataSource dataFactory;
 private Connection conn;
 private String sql;
 private PreparedStatement pstmt;
 private ResultSet rs;
 private ArrayList<AniDTO> aniList;
 
public AniDAO() {//생성자
	try {
		Context ctx = new InitialContext();
		dataFactory = (DataSource)ctx.lookup("java:comp/env/jdbc/Oracle11g");
		conn=dataFactory.getConnection();
	} catch (NamingException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
}//생성자 끝

public AniDTO aniContent(AniDTO aniDTO) {
	try {
		sql = "select title,readcount from ani where title=? and divide=1";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, aniDTO.getTitle());
		rs=pstmt.executeQuery();
		aniList = new ArrayList<AniDTO>();
		while(rs.next()) {
			aniDTO = new AniDTO();
			aniDTO.setTitle(rs.getString("title"));
			aniDTO.setReadCount(rs.getInt("readcount"));
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return aniDTO;
}

public void aniReadCount(AniDTO aniDTO) {//조회수
	try {
		sql = "update ani set readcount=? where title=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, aniDTO.getReadCount()+1);
		pstmt.setString(2, aniDTO.getTitle());
		pstmt.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	}
}//조회수

public ArrayList<AniDTO> aniList(AniDTO aniDTO){
	try {
		sql = "select title from ani order by readcount desc";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		aniList = new ArrayList<AniDTO>();
		while(rs.next()) {
			aniDTO = new AniDTO();
			aniDTO.setTitle(rs.getString("title"));
			aniList.add(aniDTO);
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return aniList;
}
}
