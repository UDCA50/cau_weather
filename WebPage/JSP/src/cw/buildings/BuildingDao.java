package cw.buildings;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import cw.dbConn.ConnUtil;

public class BuildingDao {
	public ArrayList<BuildingVo> buildingList() {
		ArrayList<BuildingVo> list = new ArrayList<BuildingVo>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = "select * from buildings order by b_num asc";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				BuildingVo vo = new BuildingVo();
				vo.setB_num(rs.getInt("b_num"));
				vo.setB_name(rs.getString("b_name"));
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
