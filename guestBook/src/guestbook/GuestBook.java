package guestbook;

import java.util.Date;
//�ڹٺ�
//���� ���̺� ������ ������ ������ ó�� Ŭ����
public class GuestBook {
	private int   gb_id        ;  //������ �Խù��� �����ϴ� ���� ��ȣ     
	
	private String gb_name     ; //�ۼ����� �̸�  
	private String gb_email    ; // �ۼ��� �̸���
	
	private String gb_tel      ; // ��ȭ��ȣ
	private Date   gb_date     ; //�ۼ���
	
	private String gb_passwd   ; //����, ������ ���� ��й�ȣ
	private String gb_contents ; //�Խù� ����
	public int getGb_id() {
		return gb_id;
	}
	public void setGb_id(int gb_id) {
		this.gb_id = gb_id;
	}
	public String getGb_name() {
		return gb_name;
	}
	public void setGb_name(String gb_name) {
		this.gb_name = gb_name;
	}
	public String getGb_email() {
		return gb_email;
	}
	public void setGb_email(String gb_email) {
		this.gb_email = gb_email;
	}
	public String getGb_tel() {
		return gb_tel;
	}
	public void setGb_tel(String gb_tel) {
		this.gb_tel = gb_tel;
	}
	public Date getGb_date() {
		return gb_date;
	}
	public void setGb_date(Date gb_date) {
		this.gb_date = gb_date;
	}
	public String getGb_passwd() {
		return gb_passwd;
	}
	public void setGb_passwd(String gb_passwd) {
		this.gb_passwd = gb_passwd;
	}
	public String getGb_contents() {
		return gb_contents;
	}
	public void setGb_contents(String gb_contents) {
		this.gb_contents = gb_contents;
	}
	@Override
	public String toString() {
		return "GuestBook [gb_id=" + gb_id + ", gb_name=" + gb_name + ", gb_email=" + gb_email + ", gb_tel=" + gb_tel
				+ ", gb_date=" + gb_date + ", gb_passwd=" + gb_passwd + ", gb_contents=" + gb_contents + "]";
	}
}
