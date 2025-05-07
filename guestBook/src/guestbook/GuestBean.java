package guestbook;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class GuestBean {
	// �����ͺ��̽� ������� ���� ����
	Connection conn = null;
	PreparedStatement pstmt = null;

	// �����ͺ��̽� ������������� ���ڿ��� ����
	String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
	String jdbc_url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";

	// �����ͺ��̽� ���� �޼���
	void connect() {
		// JDBC ����̹� �ε�
		try {
			Class.forName(jdbc_driver);
			// �����ͺ��̽� ���������� �̿��� Connection �ν��Ͻ� Ȯ��
			conn = DriverManager.getConnection(jdbc_url,"jsp","jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// �����ͺ��̽� ���� ���� �޼���
	void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} 
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	//-------------------------------------------------------------------------
	//1. ������ ������ ���� �޼���
	public boolean updateDB(GuestBook guestbook) {
		connect();
		String sql ="update guestbook set gb_name=?, gb_email=?, gb_date=sysdate, "
				+ "gb_tel=?, gb_passwd=?, gb_contents=? where gb_id=?";
		try {

			pstmt = conn.prepareStatement(sql);
			// ���ڷ� ���� GuestBook ��ü�� �̿��� ����ڰ� ������ ���� ������ SQL�� �ϼ�
			pstmt.setString(1,guestbook.getGb_name());
			pstmt.setString(2,guestbook.getGb_email());
			pstmt.setString(3,guestbook.getGb_tel());
			pstmt.setString(4,guestbook.getGb_passwd());
			pstmt.setString(5,guestbook.getGb_contents());
			pstmt.setInt(6,guestbook.getGb_id());

			pstmt.executeUpdate();

		}catch (Exception e) {
			e.getStackTrace();
			return false;
		}finally {
			disconnect();
		}	

		return true;
	}//updateDB

	//2. �Խù� ������ ���� �޼���
	public boolean deleteDB(int gb_id) {
		connect();
		String sql ="delete from guestbook where gb_id=?";
		try {

			pstmt = conn.prepareStatement(sql);

			// ���ڷ� ���� gb_id �����̸Ӹ� Ű ���� �̿��� ����
			pstmt.setInt(1,gb_id);

			pstmt.executeUpdate();


		}catch (Exception e) {
			e.getStackTrace();
			return false;
		}finally {
			disconnect();
		}	

		return true;
	}//deleteDB

	//3. �Խù� ��� �޼���
	public boolean insertDB(GuestBook guestbook) {
		connect();
		String sql ="insert into guestbook(gb_name,gb_email,gb_date,gb_tel,gb_passwd,gb_contents) values(?,?,sysdate,?,?,?)";
		try {

			pstmt = conn.prepareStatement(sql);
			// ���ڷ� ���� GuestBook ��ü�� ���� ����� �Է°��� �޾� SQL �ϼ��� �Է� ó��
			pstmt.setString(1,guestbook.getGb_name());
			pstmt.setString(2,guestbook.getGb_email());
			pstmt.setString(3,guestbook.getGb_tel());
			pstmt.setString(4,guestbook.getGb_passwd());
			pstmt.setString(5,guestbook.getGb_contents());

			pstmt.executeUpdate();

		}catch (Exception e) {
			e.getStackTrace();
			return false;
		}finally {
			disconnect();
		}	
		return true;
	}//insertDB

	//4. �Խù� �ϳ��� ��� ������ ������ ���� �޼���
	public GuestBook getDB(int gb_id) {
		connect();
		GuestBook guestbook=new GuestBook();
		String sql = "select * from guestbook where gb_id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,gb_id);
			ResultSet rs=pstmt.executeQuery();

			rs.next();	
			// ������ �����͸� GuestBook ��ü�� ����� ������.	
			guestbook.setGb_id(rs.getInt("gb_id"));
			guestbook.setGb_name(rs.getString("gb_name"));
			guestbook.setGb_email(rs.getString("gb_email"));
			guestbook.setGb_date(rs.getDate("gb_date"));
			guestbook.setGb_tel(rs.getString("gb_tel"));
			guestbook.setGb_contents(rs.getString("gb_contents"));
			guestbook.setGb_passwd(rs.getString("gb_passwd"));

			rs.close();
		}catch (Exception e) {
			e.getStackTrace();

		}finally {
			disconnect();
		}	


		return guestbook;
	}//getDB

	//5. �Խù� ��� ����� ���� ��ü �Խù��� ������ ���� �޼���
	public ArrayList<GuestBook> getDBList() {
		connect();
		// �Խù� ����� �����ϱ� ���� ArrayList ��ü ����, ��������� ArrayList �� �� ������ Ÿ���� ������.
		ArrayList<GuestBook> datas=new ArrayList<GuestBook>();
		String sql = "select * from guestbook";

		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			// ������ ���� ResultSet �� �̵��ϸ鼭 ��� ������ row �� �ϳ��� ������ �ͼ�
			//GuestBook ��ü�� �ְ� �̸� �ٽ� ArrayList �� �ִ� �۾��� �ݺ�.

			while(rs.next()) {
				GuestBook guestbook = new GuestBook();
				guestbook.setGb_id(rs.getInt("gb_id"));
				guestbook.setGb_name(rs.getString("gb_name"));
				guestbook.setGb_email(rs.getString("gb_email"));
				guestbook.setGb_date(rs.getDate("gb_date"));
				guestbook.setGb_tel(rs.getString("gb_tel"));
				guestbook.setGb_contents(rs.getString("gb_contents"));

				datas.add(guestbook);
			}
			rs.close();
		}catch (Exception e) {			
			e.getStackTrace();
		}finally {		disconnect();		}	
		// ó���� ���� ArrayList �� ������.
		return datas;
	}//getDBList
}

