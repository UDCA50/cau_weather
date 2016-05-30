package cw.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import cw.dbConn.ConnUtil;

public class MemberDao {
	
	/*로그인체크*/
	public int[] loginCheck(String id, String pass){
		int[] rst = new int[2];
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = "select * from member where m_id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				String DBpass = rs.getString("m_pass");
				int DBtype = Integer.parseInt(rs.getString("m_type"));
				if ((DBpass.trim()).equals((pass.trim()))) {
					rst[0] = 2; //로그인 성공
				} else {
					rst[0] = 1; // 비밀번호 틀림
				}
				rst[1] = DBtype;
			} // 아이디 없음
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(rs, ps, conn);
		}
		return rst;
	}
	
	/*회원가입*/
	public int insertMember(MemberVo vo) {
		int rst = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = "insert into member values(null,?,?,?,?,?,?,?,sysdate())";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, vo.getM_type());
			ps.setString(2, vo.getM_id());
			ps.setString(3, vo.getM_pass());
			ps.setString(4, vo.getM_name());
			ps.setString(5, vo.getM_nickname());
			ps.setString(6, vo.getM_telephone());
			ps.setString(7, vo.getM_email());
			rst = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(ps, conn);
		}
		return rst;
	}
	/*id 중복Check*/
	public int idCheck(String id) {
		int rst = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = "select * from member where m_id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				rst = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(rs, ps, conn);
		}
		return rst;
	}

	/*회원 정보 수정*/
	public int updateMember(MemberVo vo) {
		int rst = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = "update member set m_pass=?, m_name=?, m_nickname=?, m_telephone=?, m_email=? where m_num = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getM_pass());
			ps.setString(2, vo.getM_name());
			ps.setString(3, vo.getM_nickname());
			ps.setString(4, vo.getM_telephone());
			ps.setString(5, vo.getM_email());
			ps.setInt(6, vo.getM_num());
			rst = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(ps, conn);
		}
		return rst;
	}

	/*회원전체리스트*/
	public ArrayList<MemberVo> selectAllMember() {
		ArrayList<MemberVo> list = new ArrayList<MemberVo>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = "select * from member order by m_id asc";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				MemberVo vo = new MemberVo();
				vo.setM_num(rs.getInt("m_num"));
				vo.setM_type(rs.getInt("m_type"));
				vo.setM_id(rs.getString("m_id"));
				vo.setM_pass(rs.getString("m_pass"));
				vo.setM_name(rs.getString("m_name"));
				vo.setM_nickname(rs.getString("m_nickname"));
				vo.setM_telephone(rs.getString("m_telephone"));
				vo.setM_email(rs.getString("m_email"));
				vo.setM_regdate(rs.getString("m_regdate"));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(rs, ps, conn);
		}
		return list;
	}

	/*개별회원 정보 (id로 추출)*/
	public MemberVo selectMember(String id) {
		MemberVo vo = new MemberVo();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = "select * from member where m_id = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				vo.setM_num(rs.getInt("m_num"));
				vo.setM_type(rs.getInt("m_type"));
				vo.setM_id(rs.getString("m_id"));
				vo.setM_pass(rs.getString("m_pass"));
				vo.setM_name(rs.getString("m_name"));
				vo.setM_nickname(rs.getString("m_nickname"));
				vo.setM_telephone(rs.getString("m_telephone"));
				vo.setM_email(rs.getString("m_email"));
				vo.setM_regdate(rs.getString("m_regdate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(rs, ps, conn);
		}
		return vo;
	}

}
