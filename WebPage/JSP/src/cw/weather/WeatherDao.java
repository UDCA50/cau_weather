package cw.weather;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import cw.dbConn.ConnUtil;


public class WeatherDao {
	public ArrayList<WeatherVo> weatherList(int building, int classroom) {
		ArrayList<WeatherVo> list = new ArrayList<WeatherVo>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = "select * from weather where w_building = ? and w_classroom = ? order by w_num desc";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, building);
			ps.setInt(2,  classroom);
			rs = ps.executeQuery();
			while (rs.next()) {
				WeatherVo vo = new WeatherVo();
				vo.setW_num(rs.getInt("w_num"));
				vo.setW_hum(rs.getString("w_hum"));
				vo.setW_temp(rs.getString("w_temp"));
				vo.setW_building(rs.getInt("w_building"));
				vo.setW_classroom(rs.getInt("w_classroom"));
				vo.setW_time(rs.getString("w_time"));
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
