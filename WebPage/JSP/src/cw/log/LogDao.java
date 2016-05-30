package cw.log;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import cw.dbConn.ConnUtil;
import cw.member.MemberVo;


public class LogDao {
	public ArrayList<LogVo> logList() {
		ArrayList<LogVo> list = new ArrayList<LogVo>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = "select * from log order by l_num desc";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				LogVo vo = new LogVo();
				vo.setL_num(rs.getInt("l_num"));
				vo.setL_id(rs.getString("l_id"));
				vo.setL_time(rs.getString("l_time"));
				vo.setL_type(rs.getString("l_type"));
		
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(rs, ps, conn);
		}
		return list;
	}
	
	public int insertLog(String logId, String logType) {
		int rst = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = "insert into log values(null,sysdate(),?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, logId);
			ps.setString(2, logType);
			
			rst = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(ps, conn);
		}
		return rst;
	}
}
