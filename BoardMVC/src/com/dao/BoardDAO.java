package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.entity.BoardDTO;
import com.entity.PageTO;

public class BoardDAO {
/* 
Model 설계 : 클라이언트의 요청에 대한 실제 작업을 처리하는 Business Logic 설계이다
			 Command패턴을 이용하여 요청을 모듈화하고, 
			 데이터베이스 연동을 위한 DAO패턴, DTO패턴을 적용하여 설계.
- Command : 만능 리모콘의 역할(행동을 하나로 만들기) //다형성
BoardCommand : command패턴, 인터페이스

- DAO패턴, DTO패턴 클래스 목록
BoardDTO == VO : board 테이블의 레코드를 저장하기 위한 도메인 클래스
BoardDAO 	   : 데이터베이스 관리 클래스
PageTO		   : 게시판 페이지 처리 관련 데이터 관리 클래스

- View  설계
 : 클라이언트 요청에 대한 응답 처리인 presentation logic을 처리하여 jsp로 구현
   웹 브라우저에서 화면을 담당하는 jsp
*/
	DataSource dataFactory;//DriverManager를 보완한 클래스, 커넥션 풀
	public BoardDAO() {
		try {
			Context ctx = new InitialContext();
			dataFactory = (DataSource)ctx.lookup("java:comp/env/jdbc/myoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//BoardDAO()
	//1. 목록보기
	public ArrayList<BoardDTO> list() {
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = dataFactory.getConnection(); //자바빈에서 String 타입
			String query = "select num, author, title, content, to_char(writeday,'YYYY/MM/DD') writeday, readCnt, repRoot, repStep, repIndent from board2 order by repRoot desc, repStep asc";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int num = rs.getInt("num");
				String author = rs.getString("author");
				String title = rs.getString("title");
				String content = rs.getString("content");
				String writeday = rs.getString("writeday");//날짜형을 문자형으로
				int readCnt = rs.getInt("readCnt");
				int repRoot = rs.getInt("repRoot");
				int repStep = rs.getInt("repStep");
				int repIndent = rs.getInt("repIndent");
				//자바빈에 담기
				BoardDTO data= new BoardDTO();
				data.setNum(num);
				data.setAuthor(author);
				data.setTitle(title);
				data.setContent(content);
				data.setWriteday(writeday);
				data.setReadCnt(readCnt);
				data.setRepRoot(repRoot);
				data.setRepStep(repStep);
				data.setRepIndent(repIndent);
				//리스트 컬렉션에 담기
				list.add(data);//레코드별로 묶어서 보내기 위해 리스트에 저장
			}//while
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}//try end
		return list;
	}//ArrayList<BoardDTO> list
	
	//2.글쓰기
	public void write(String _title, String _author, String _content) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = dataFactory.getConnection();
			String query = "insert into board2(num, title, author, content, repRoot, repStep, repIndent) values(board2_seq.nextVal, ?, ?, ?, board2_seq.currval, 0, 0)";
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, _title);
			pstmt.setString(2, _author);
			pstmt.setString(3, _content);
			
			int n = pstmt.executeUpdate();
			System.out.println("write()..._title : " + _title);
			System.out.println("여기는 write...n : " + n);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}//end finally
	}//end insert
	
	//3.조회수 1증가
	public void readCount(String _num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = dataFactory.getConnection();
			String query = "update board2 set readCnt = readCnt + 1 where num=" + _num;
			pstmt = conn.prepareStatement(query);
			int n = pstmt.executeUpdate();
			System.out.println("여기는 readCount...n : " + n);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}//end finally
	}// readCount()
	
	//4.글 자세히 보기
	public BoardDTO retrieve(String _num) {
		readCount(_num);//조회수 증가
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardDTO data = new BoardDTO();
		
		try {
			conn = dataFactory.getConnection();
			String query = "select * from board2 where num=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, Integer.parseInt(_num));
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				int num = rs.getInt("num");
				String author = rs.getString("author");
				String title = rs.getString("title");
				String content = rs.getString("content");
				String writeday = rs.getString("writeday");//날짜형을 문자형으로
				int readCnt = rs.getInt("readCnt");
				
				data.setNum(num);
				data.setAuthor(author);
				data.setTitle(title);
				data.setContent(content);
				data.setWriteday(writeday);
				data.setReadCnt(readCnt);
			}//end if
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}//end try
		return data;
	}//retrieve end
	
	//5.글 수정하기
	public void update(String _num, String _title, String _author, String _content) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = dataFactory.getConnection();
			String query = "update board2 set title=?, author=?, content=? where num=?";
			
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, _title);
			pstmt.setString(2, _author);
			pstmt.setString(3, _content);
			pstmt.setInt(4, Integer.parseInt(_num));
			int n = pstmt.executeUpdate();
			System.out.println("여기는 update...n : " + n);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}//try
	}//end update
	
	//6.글 삭제하기
	public void delete(String _num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = dataFactory.getConnection();
			String query = "delete from board2 where num=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, Integer.parseInt(_num));
			int n = pstmt.executeUpdate();
			System.out.println("여기는 delete...n : " + n);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}//try
	}//end delete
	
	//7.검색하기
	public ArrayList<BoardDTO> search(String _searchName, String _searchValue) {
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = dataFactory.getConnection();
			String query = "select num, author, title, content, to_char(writeday, 'YYYY/MM/DD') writeday, readCnt from board2";
			
			if (_searchName.equals("title")) {
				query += " where title like?";
			} else {
				query += " where author like?";
			}// if
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, "%" + _searchValue + "%");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int num = rs.getInt("num");
				String author = rs.getString("author");
				String title = rs.getString("title");
				String content = rs.getString("content");
				String writeday = rs.getString("writeday");//날짜형을 문자형으로
				int readCnt = rs.getInt("readCnt");
				
				BoardDTO data= new BoardDTO();
				data.setNum(num);
				data.setAuthor(author);
				data.setTitle(title);
				data.setContent(content);
				data.setWriteday(writeday);
				data.setReadCnt(readCnt);
				list.add(data);
			}//while
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}//try
		return list;
	}//search()
	
	//8.답변글 입력 폼 보기
	public BoardDTO replyui(String _num) {
		BoardDTO data = new BoardDTO();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = dataFactory.getConnection();
			String query = "select * from board2 where num=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, Integer.parseInt(_num));
			rs = pstmt.executeQuery();
			if (rs.next()) {
				data.setNum(rs.getInt("num"));
				data.setTitle(rs.getString("title"));
				data.setAuthor(rs.getString("author"));
				data.setContent(rs.getString("content"));
				data.setWriteday(rs.getString("writeday"));
				data.setReadCnt(rs.getInt("readCnt"));
				data.setRepRoot(rs.getInt("repRoot"));
				data.setRepStep(rs.getInt("repStep"));
				data.setRepIndent(rs.getInt("repIndent"));
			}// end if
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}// try
		return data;
	}//replyui()
	
	//9.답변 달기
	public void reply(String _num, String _title, String _author, String _content, String _repRoot, String _repStep, String _repIndent) {
		System.out.println("여기는... reply : " + _repRoot + ", " + _repStep);
		makeReply(_repRoot, _repStep);
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = dataFactory.getConnection();
			String query = "insert into board2(num, title, author, content, repRoot, repStep, repIndent) values(board2_seq.nextVal, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, _title);
			pstmt.setString(2, _author);
			pstmt.setString(3, _content);
			pstmt.setInt(4, Integer.parseInt(_repRoot));
			pstmt.setInt(5, Integer.parseInt(_repStep) +1 );
			pstmt.setInt(6, Integer.parseInt(_repIndent) +1 );
			int n = pstmt.executeUpdate();
			System.out.println("여기는 reply...n : " + n);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}//try
	}//end reply
	
	//10.답변글의 기존 repStep 1 증가
	public void makeReply(String _root, String _step) {
		System.out.println("여기는... makeReply : " + _root + ", " + _step);
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = dataFactory.getConnection();
			String query = "update board2 set repStep = repStep+1 where repRoot=? and repStep>?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, Integer.parseInt(_root));
			pstmt.setInt(2, Integer.parseInt(_step));
			int n = pstmt.executeUpdate();
			System.out.println("여기는... makeReply...n : " + n);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}//end try
	}//end makeReply
	
	//11.페이징 처리 : 전체 레코드 갯수 구하기
	public int totalCount() {
		int count = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = dataFactory.getConnection();
			String query = "select count(*) from board2";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}//try
		return count;
	}//end totalCount
	
	//12.페이지 구현
	public PageTO page(int curPage) {
		PageTO to = new PageTO();
		int totalCount = totalCount();
		
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
/*
ResultSet옵션
 TYPE_FORWARD_ONLY : 커서이동을 다음 레코드로만 이동되도록 한다.
 TYPE_SCROLL_SENSITIVE : 커시이동을 자유롭게 하고 업데이트 내용을 반영한다.
 TYPE_SCROLL_INSENSITIVE : 커서 이동을 자유롭게 하고 업데이트 내용을 반영하지 않는다.
 CONCUR_UPDATABLE : 데이터 변경이 가능하도록 한다.
 CONCUR_READ_ONLY : 데이터 변경이 불가능하도록 한다.
*/
		try {
			conn = dataFactory.getConnection();
			String query = "select num, author, title, content, to_char(writeday, 'yyyy/mm/dd') writeday, readCnt, repRoot, repStep, repIndent from board2 order by repRoot desc, repStep asc";
			
			pstmt = conn.prepareStatement(query, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);//양방향 접근
			rs = pstmt.executeQuery();
			
			int perPage = to.getPerPage();
			//(현재 페이지 번호 -1) * 5
			int skip = (curPage - 1) * perPage;
			//전체레코드에서 스킵해야 할 개수를 이용해 랜덤 접근함.
			if (skip > 0) {
				rs.absolute(skip);
			}
			
			for (int i = 0; i <perPage && rs.next(); i++) {
				int num = rs.getInt("num");
				String author = rs.getString("author");
				String title = rs.getString("title");
				String content = rs.getString("content");
				String writeday = rs.getString("writeday");
				int readCnt = rs.getInt("readCnt");
				int repRoot = rs.getInt("repRoot");
				int repStep = rs.getInt("repStep");
				int repIndent = rs.getInt("repIndent");
				
				BoardDTO data = new BoardDTO();
				data.setNum(num);
				data.setAuthor(author);
				data.setTitle(title);
				data.setContent(content);
				data.setWriteday(writeday);
				data.setReadCnt(readCnt);
				data.setRepRoot(repRoot);
				data.setRepStep(repStep);
				data.setRepIndent(repIndent);
				list.add(data);
			}//for
			to.setList(list);
			to.setTotalCount(totalCount);
			to.setCurPage(curPage);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}//try
		return to;
	}//end page
}