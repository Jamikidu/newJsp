package model_p;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class GalleryDAO {

	Connection con;
	PreparedStatement ptmt;
	ResultSet rs;
	String sql;
	
	public GalleryDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:/comp/env/mvc322");
			con = ds.getConnection();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
	//갤러리리스트
	public ArrayList<GalleryDTO> list(){
		
		sql = "select * from gallery order by gid desc";
		ArrayList<GalleryDTO> res = new ArrayList<>();
		
		try {
			ptmt = con.prepareStatement(sql);
			rs = ptmt.executeQuery();
			while(rs.next()) {
				GalleryDTO dto = new GalleryDTO();
				dto.setGid(rs.getInt("gid"));
				dto.setGcnt(rs.getInt("gcnt"));
				dto.setGtitle(rs.getString("gtitle"));
				dto.setGpname(rs.getString("gpname"));
				dto.setGpw(rs.getString("gpw"));
				dto.setGupfile(rs.getString("gupfile"));
				dto.setGcontent(rs.getString("gcontent"));
				dto.setGreg_date(rs.getDate("greg_date"));
				
				res.add(dto);

			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return res;
	}
	
	// 갤러리 상세보기
	public GalleryDTO detail(int gid) {
		
		sql = "select * from gallery where gid = ?";
		GalleryDTO dto = null;
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setInt(1, gid);
			rs = ptmt.executeQuery();
			
			if(rs.next()) {
				dto = new GalleryDTO();
				dto.setGid(rs.getInt("gid"));
				dto.setGcnt(rs.getInt("gcnt"));
				dto.setGtitle(rs.getString("gtitle"));
				dto.setGpname(rs.getString("gpname"));
				dto.setGpw(rs.getString("gpw"));
				dto.setGupfile(rs.getString("gupfile"));
				dto.setGcontent(rs.getString("gcontent"));
				dto.setGreg_date(rs.getDate("greg_date"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		
		
		return dto;
	}
	
	//갤러리 쓰기
	public void write() {
		
	}
	
	public void close() {
		if(rs!=null) try {rs.close();} catch (Exception e) {}
		if(ptmt!=null) try {ptmt.close();} catch (Exception e) {}
		if(con!=null) try {con.close();} catch (Exception e) {}
		
	}
}
