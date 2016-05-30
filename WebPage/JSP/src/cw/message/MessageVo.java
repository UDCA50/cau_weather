package cw.message;

public class MessageVo {
	private int msg_num;
	private String msg_writer;
	private String msg_title;
	private String msg_contents;
	private int msg_sender;
	private int msg_receiver;
	private String msg_wrdate;
	
	public int getMsg_num() {
		return msg_num;
	}
	public void setMsg_num(int msg_num) {
		this.msg_num = msg_num;
	}
	public String getMsg_writer() {
		return msg_writer;
	}
	public void setMsg_writer(String msg_writer) {
		this.msg_writer = msg_writer;
	}
	public String getMsg_title() {
		return msg_title;
	}
	public void setMsg_title(String msg_title) {
		this.msg_title = msg_title;
	}
	public String getMsg_contents() {
		return msg_contents;
	}
	public void setMsg_contents(String msg_contents) {
		this.msg_contents = msg_contents;
	}
	public int getMsg_sender() {
		return msg_sender;
	}
	public void setMsg_sender(int msg_sender) {
		this.msg_sender = msg_sender;
	}
	public int getMsg_receiver() {
		return msg_receiver;
	}
	public void setMsg_receiver(int msg_receiver) {
		this.msg_receiver = msg_receiver;
	}
	public String getMsg_wrdate() {
		return msg_wrdate;
	}
	public void setMsg_wrdate(String msg_wrdate) {
		this.msg_wrdate = msg_wrdate;
	}
	
}
