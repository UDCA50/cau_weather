package cw.message;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import cw.dbConn.ConnUtil;

public class MessageDao {
	/* 메세지 작성 */
	public int insertMessage(MessageVo vo) {
		int rst = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = "insert into message values(null,?,?,?,?,?,sysdate())";
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getMsg_writer());
			ps.setString(2, vo.getMsg_title());
			ps.setString(3, vo.getMsg_contents());
			ps.setInt(4, vo.getMsg_sender());
			ps.setInt(5, vo.getMsg_receiver());
			rst = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(ps, conn);
		}
		return rst;
	}
	
	/*메세지 전체리스트*/
	public ArrayList<MessageVo> messageList() {
		ArrayList<MessageVo> list = new ArrayList<MessageVo>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = "select * from message order by msg_wrdate desc";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				MessageVo vo = new MessageVo();
				vo.setMsg_num(rs.getInt("msg_num"));
				vo.setMsg_writer(rs.getString("msg_writer"));
				vo.setMsg_title(rs.getString("msg_title"));
				vo.setMsg_contents(rs.getString("msg_contents"));
				vo.setMsg_sender(rs.getInt("msg_sender"));
				vo.setMsg_receiver(rs.getInt("msg_receiver"));
				vo.setMsg_wrdate(rs.getString("msg_wrdate"));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(rs, ps, conn);
		}
		return list;
	}
	
	/*메세지 전체개수*/
	public int messageCount() {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = "select count(*) from message";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			rs.next();
			cnt = rs.getInt("count(*)");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(ps, conn);
		}
		return cnt;
	}

	/*메세지 리스트 (메뉴별 추출 _ 관리자용)*/
	public ArrayList<MessageVo> messageList(int menuOrder) {
		ArrayList<MessageVo> list = new ArrayList<MessageVo>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		System.out.println(menuOrder);
		try {
			conn = ConnUtil.getConnection();
			String sql = null;
			switch(menuOrder){
			case 0:
				sql = "select * from message where msg_sender = 0 order by msg_wrdate desc";
				break;
			case 1:
				sql = "select * from message where msg_sender = 1 order by msg_wrdate desc";
				break;
			case 2:
				sql = "select * from message where msg_sender = 2 order by msg_wrdate desc";
				break;
			}
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				MessageVo vo = new MessageVo();
				vo.setMsg_num(rs.getInt("msg_num"));
				vo.setMsg_writer(rs.getString("msg_writer"));
				vo.setMsg_title(rs.getString("msg_title"));
				vo.setMsg_contents(rs.getString("msg_contents"));
				vo.setMsg_sender(rs.getInt("msg_sender"));
				vo.setMsg_receiver(rs.getInt("msg_receiver"));
				vo.setMsg_wrdate(rs.getString("msg_wrdate"));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(rs, ps, conn);
		}
		return list;
	}
	
	/*메세지 개수 (메뉴별 추출)*/
	public int messageCount(int menuOrder) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = null;
			
			switch(menuOrder){
			case 0:
				sql = "select count(*) from message where msg_sender = 0";
				break;
			case 1:
				sql = "select count(*) from message where msg_sender = 1";
				break;
			case 2:
				sql = "select count(*) from message where msg_sender = 2";
				break;
			}
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			rs.next();
			cnt = rs.getInt("count(*)");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(ps, conn);
		}
		return cnt;
	}
	/*메세지 리스트 (메뉴별 추출 _ 사용자용)*/
	public ArrayList<MessageVo> messageListNormal(int menuOrder, String loginId) {
		ArrayList<MessageVo> list = new ArrayList<MessageVo>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		System.out.println(menuOrder);
		try {
			conn = ConnUtil.getConnection();
			String sql = null;
			switch(menuOrder){
			case 1:
				sql = "select * from message where msg_sender = 0 and msg_receiver = 1 and msg_writer = ? order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
				break;
			case 2:
				sql = "select * from message where msg_sender = 0 and msg_receiver = 2 and msg_writer = ? order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
				break;
			case 10:
				sql = "select * from message where msg_sender = 0 and msg_writer = ? order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
				break;
			case 20: //학생전체가 받은 메시지 총합
				sql = "select * from message where msg_receiver = 0 order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				break;
			case 21: //교직원이 학생전체 한테 메시지 보낸것
				sql = "select * from message where msg_sender = 1 and msg_receiver = 0 order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				break;
			case 22: //공사관리자가 학생전체 한테 메시지 보낸것
				sql = "select * from message where msg_sender = 2 and msg_receiver = 0 order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				break;
			}
			
			rs = ps.executeQuery();
			while (rs.next()) {
				MessageVo vo = new MessageVo();
				vo.setMsg_num(rs.getInt("msg_num"));
				vo.setMsg_writer(rs.getString("msg_writer"));
				vo.setMsg_title(rs.getString("msg_title"));
				vo.setMsg_contents(rs.getString("msg_contents"));
				vo.setMsg_sender(rs.getInt("msg_sender"));
				vo.setMsg_receiver(rs.getInt("msg_receiver"));
				vo.setMsg_wrdate(rs.getString("msg_wrdate"));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(rs, ps, conn);
		}
		return list;
	}
	
	/*메세지 사용자용*/
	public int messageCountNormal(int order, String loginId) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = null;
			if(order==0){
				sql = "select count(*) from message where msg_writer=?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
			}
			else if(order==1){
				sql = "select count(*) from message where msg_receiver=1 and msg_writer=?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
			}else if(order==2){
				sql = "select count(*) from message where msg_receiver=2 and msg_writer=?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
			}else if(order==20){
				sql = "select count(*) from message where msg_receiver=0";
				ps = conn.prepareStatement(sql);
			}else if(order==21){
				sql = "select count(*) from message where msg_receiver=0 and msg_sender = 1 ";
				ps = conn.prepareStatement(sql);
			}else{
				sql = "select count(*) from message where msg_receiver=0 and msg_sender = 2 ";
				ps = conn.prepareStatement(sql);
			}
		
			rs = ps.executeQuery();
			rs.next();
			cnt = rs.getInt("count(*)");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(ps, conn);
		}
		return cnt;
	}
	/*메세지 리스트 (메뉴별 추출 _ 교직원용)*/
	public ArrayList<MessageVo> messageListManager(int menuOrder, String loginId) {
		ArrayList<MessageVo> list = new ArrayList<MessageVo>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		System.out.println(menuOrder);
		try {
			conn = ConnUtil.getConnection();
			String sql = null;
			switch(menuOrder){
			case 0:
				sql = "select * from message where msg_sender = 1 and msg_receiver = 0 and msg_writer = ? order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
				break;
			case 2:
				sql = "select * from message where msg_sender = 1 and msg_receiver = 2 and msg_writer = ? order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
				break;
			case 10:
				sql = "select * from message where msg_sender = 1 and msg_writer = ? order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
				break;
			case 20: //교직원이 받은 메시지 총합
				sql = "select * from message where msg_receiver = 1 order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				break;
			case 21: //교직원이 학생한테 메시지 받은것
				sql = "select * from message where msg_sender = 0 and msg_receiver = 1 order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				break;
			case 22: //교직원이 공사관리자한테 메시지 받은
				sql = "select * from message where msg_sender = 2 and msg_receiver = 1 order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				break;
			}
			
			rs = ps.executeQuery();
			while (rs.next()) {
				MessageVo vo = new MessageVo();
				vo.setMsg_num(rs.getInt("msg_num"));
				vo.setMsg_writer(rs.getString("msg_writer"));
				vo.setMsg_title(rs.getString("msg_title"));
				vo.setMsg_contents(rs.getString("msg_contents"));
				vo.setMsg_sender(rs.getInt("msg_sender"));
				vo.setMsg_receiver(rs.getInt("msg_receiver"));
				vo.setMsg_wrdate(rs.getString("msg_wrdate"));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(rs, ps, conn);
		}
		return list;
	}
	/*메세지 교직원용*/
	public int messageCountManager(int order, String loginId) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = null;
			if(order==0){
				sql = "select count(*) from message where msg_writer=?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
			}else if(order==1){
				sql = "select count(*) from message where msg_receiver=0 and msg_writer=?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
			}else if(order==2){
				sql = "select count(*) from message where msg_receiver=2 and msg_writer=?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
			}else if(order==20){
				sql = "select count(*) from message where msg_receiver=1 ";
				ps = conn.prepareStatement(sql);
			}else if(order==21){
				sql = "select count(*) from message where msg_receiver=1 msg_sender=0";
				ps = conn.prepareStatement(sql);
			}else{
				sql = "select count(*) from message where msg_receiver=1  msg_sender=2";
				ps = conn.prepareStatement(sql);
			}
			
			
			rs = ps.executeQuery();
			rs.next();
			cnt = rs.getInt("count(*)");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(ps, conn);
		}
		return cnt;
	}
	/*메세지 리스트 (메뉴별 추출 _ 공사관리자용)*/
	public ArrayList<MessageVo> messageListOper(int menuOrder, String loginId) {
		ArrayList<MessageVo> list = new ArrayList<MessageVo>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		System.out.println(menuOrder);
		try {
			conn = ConnUtil.getConnection();
			String sql = null;
			switch(menuOrder){
			case 0:
				sql = "select * from message where msg_sender = 2 and msg_receiver = 0 and msg_writer = ? order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
				break;
			case 1:
				sql = "select * from message where msg_sender = 2 and msg_receiver = 0 and msg_writer = ? order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
				break;
			case 10:
				sql = "select * from message where msg_sender = 2 and msg_writer = ? order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
				break;
			case 20: //공사관리자가 받은 메시지 총합
				sql = "select * from message where msg_receiver = 2 order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				break;
			case 21: //공사관리자가 학생한테 메시지 받은것
				sql = "select * from message where msg_sender = 0 and msg_receiver = 2 order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				break;
			case 22: //공사관리자가 교직원한테 메시지 받은
				sql = "select * from message where msg_sender = 1 and msg_receiver = 2 order by msg_wrdate desc";
				ps = conn.prepareStatement(sql);
				break;
			}
			
			rs = ps.executeQuery();
			while (rs.next()) {
				MessageVo vo = new MessageVo();
				vo.setMsg_num(rs.getInt("msg_num"));
				vo.setMsg_writer(rs.getString("msg_writer"));
				vo.setMsg_title(rs.getString("msg_title"));
				vo.setMsg_contents(rs.getString("msg_contents"));
				vo.setMsg_sender(rs.getInt("msg_sender"));
				vo.setMsg_receiver(rs.getInt("msg_receiver"));
				vo.setMsg_wrdate(rs.getString("msg_wrdate"));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(rs, ps, conn);
		}
		return list;
	}
	/*메세지 카운트 교직원용*/
	public int messageCountOper(int order, String loginId) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = null;
			if(order==0){
				sql = "select count(*) from message where msg_writer=?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
			}else if(order==1){
				sql = "select count(*) from message where msg_receiver=0 and msg_writer=?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
			}else if(order==2){
				sql = "select count(*) from message where msg_receiver=1 and msg_writer=?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, loginId);
			}else if(order==20){
				sql = "select count(*) from message where msg_receiver=2";
				ps = conn.prepareStatement(sql);
			}else if(order==21){
				sql = "select count(*) from message where msg_receiver=2 and msg_sender=0";
				ps = conn.prepareStatement(sql);
			}else{
				sql = "select count(*) from message where msg_receiver=2 and msg_sender=1";
				ps = conn.prepareStatement(sql);
			}
			
			rs = ps.executeQuery();
			rs.next();
			cnt = rs.getInt("count(*)");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(ps, conn);
		}
		return cnt;
	}
}
