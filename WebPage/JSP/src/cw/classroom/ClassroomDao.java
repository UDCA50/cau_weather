package cw.classroom;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import cw.dbConn.ConnUtil;

public class ClassroomDao {
	public ArrayList<ClassroomVo> classroomList(int building) {
		ArrayList<ClassroomVo> list = new ArrayList<ClassroomVo>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = "select * from classroom where c_position = ? order by c_num asc";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, building);
			rs = ps.executeQuery();
			while (rs.next()) {
				ClassroomVo vo = new ClassroomVo();
				vo.setC_num(rs.getInt("c_num"));
				vo.setC_name(rs.getString("c_name"));
				vo.setC_position(rs.getInt("c_position"));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(rs, ps, conn);
		}
		return list;
	}
}
