package model;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.mysql.cj.x.protobuf.MysqlxConnection.Close;

public class BoardDAO {

	Connection con;
	PreparedStatement ptmt;
	ResultSet rs;
	String sql;
	
	public BoardDAO() {
		try {
			Context init = new InitialContext(); //우리 프로젝트 폴더 안에 있는 실제 파일을 찾아주는 역할
			DataSource ds = (DataSource)init.lookup("java:/comp/env/mvc322"); //db가 프로젝트로 들어오는 입구
			con = ds.getConnection(); //연결 하겠다는 명령어
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 포켓몬 리스트
	public ArrayList<BoardDTO> list(){
		
		sql = "select * from board";
		ArrayList<BoardDTO> res = new ArrayList<>();
		
		try {
			ptmt = con.prepareStatement(sql);
			rs = ptmt.executeQuery();
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setId(rs.getInt("id"));
				dto.setGid(rs.getInt("gid"));
				dto.setCnt(rs.getInt("cnt"));
				dto.setSeq(rs.getInt("seq"));
				dto.setLev(rs.getInt("lev"));
				dto.setPname(rs.getString("pname"));
				dto.setPw(rs.getString("pw"));
				dto.setTitle(rs.getString("title"));
				dto.setUpfile(rs.getString("upfile"));
				dto.setContent(rs.getString("content"));
				dto.setReg_date(rs.getTimestamp("reg_date"));
				
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
	
	// 포켓몬 상세보기
	public BoardDTO detail(int id) {
		
		sql = "select * from board where id = ?";
		
		BoardDTO dto = null;
		
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setInt(1, id);
			rs = ptmt.executeQuery();
			
			if(rs.next()) {
				dto = new BoardDTO();
				dto.setId(rs.getInt("id"));
				dto.setGid(rs.getInt("gid"));
				dto.setCnt(rs.getInt("cnt"));
				dto.setSeq(rs.getInt("seq"));
				dto.setLev(rs.getInt("lev"));
				dto.setPname(rs.getString("pname"));
				dto.setPw(rs.getString("pw"));
				dto.setTitle(rs.getString("title"));
				dto.setUpfile(rs.getString("upfile"));
				dto.setContent(rs.getString("content"));
				dto.setReg_date(rs.getTimestamp("reg_date"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		
		return dto;
	}
	
	public void close() {
		if(rs!=null) try {rs.close();} catch (Exception e) {}
		if(ptmt!=null) try {ptmt.close();} catch (Exception e) {}
		if(con!=null) try {con.close();} catch (Exception e) {}
		
	}
}
