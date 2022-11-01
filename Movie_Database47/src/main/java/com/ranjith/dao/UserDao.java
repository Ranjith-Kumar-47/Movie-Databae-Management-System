package com.ranjith.dao;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import com.ranjith.bean.User;  
public class UserDao {  
  
public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.cj.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/moviedatabase","root","");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  
public static int save(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
			Statement st = con.createStatement();
			status = st.executeUpdate("INSERT INTO moviedatabase.MOVIE47(MOV_NAME,MOV_YEAR,MOV_TIME,MOV_LANG,MOV_REL_DATE,MOV_REL_COUNTRY,MOV_BUDGET,ABOUT_MOV) VALUES ('"+u.getMOV_NAME()+"',"+u.getMOV_YEAR()+",'"+u.getMOV_TIME()+"','"+u.getMOV_LANG()+"','"+u.getMOV_REL_DATE()+"','"+u.getMOV_REL_COUNTRY()+"','"+u.getMOV_BUDGET()+"','"+u.getABOUT_MOV()+"');");
			status = st.executeUpdate("INSERT INTO moviedatabase.ACTOR47(MOV_ID,ACT1_NAME,ACT2_NAME) VALUES("+u.getMov_max()+",'"+u.getACT1_NAME()+"','"+u.getACT2_NAME()+"'); ");
			status = st.executeUpdate("INSERT INTO moviedatabase.MOVIE_CASTING47(MOV_ID,ACT_ID,ACT1_ROLE,ACT2_ROLE) VALUES("+u.getMov_max()+","+u.getAct_max()+",'"+u.getACT1_ROLE()+"','"+u.getACT2_ROLE()+"'); ");
			status = st.executeUpdate("INSERT INTO moviedatabase.DIRECTOR47(MOV_ID,DIR_NAME,DIR_PHONO) VALUES("+u.getMov_max()+",'"+u.getDIR_NAME()+"',"+u.getDIR_PHONO()+");");
			status = st.executeUpdate("INSERT INTO moviedatabase.PRODUCER47(MOV_ID,PRO_NAME,PRO_PHONO) VALUES("+u.getMov_max()+",'"+u.getPRO_NAME()+"',"+u.getPRO_PHONO()+");");
			status = st.executeUpdate("INSERT INTO moviedatabase.REVIEWS47 (MOV_ID,RATINGS,NO_OF_RATINGS) VALUES("+u.getMov_max()+",'"+u.getRATINGS()+"',"+u.getNO_OF_RATINGS()+");");
			status = st.executeUpdate("INSERT INTO moviedatabase.category47 (MOV_ID,category1,category2,category3,category4,category5) VALUES("+u.getMov_max()+",'"+u.getCategory1()+"','"+u.getCategory2()+"','"+u.getCategory3()+"','"+u.getCategory4()+"','"+u.getCategory5()+"');");

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(User u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("update moviedatabase.movie47 m , moviedatabase.actor47 a ,  moviedatabase.director47 d, moviedatabase.producer47 p,  moviedatabase.movie_casting47 c,  moviedatabase.reviews47 r , moviedatabase.category47 l set m.MOV_NAME = ? , m.MOV_YEAR = ?, m.MOV_TIME = ?, m.MOV_LANG = ?, m.MOV_REL_DATE = ?, m.MOV_REL_COUNTRY = ?, m.MOV_BUDGET = ?, m.ABOUT_MOV = ? , a.ACT1_NAME = ?,c.ACT1_ROLE = ? , a.ACT2_NAME = ? ,c.ACT2_ROLE = ? ,d.DIR_NAME = ? ,d.DIR_PHONO = ? ,p.PRO_NAME = ? ,p.PRO_PHONO = ? , r.RATINGS = ? ,r.NO_OF_RATINGS = ? ,l.category1=?,l.category2=?,l.category3=?,l.category4=?,l.category5=? where m.mov_id =? and m.mov_id = a.mov_id and m.mov_id = d.mov_id and m.mov_id = c.mov_id and m.mov_id = p.mov_id and m.mov_id = r.mov_id and m.mov_id = l.mov_id ;");
					ps.setString(1, u.getMOV_NAME());
					ps.setInt(2, u.getMOV_YEAR());
					ps.setString(3, u.getMOV_TIME());
					ps.setString(4, u.getMOV_LANG());
					ps.setString(5, u.getMOV_REL_DATE());
					ps.setString(6, u.getMOV_REL_COUNTRY());
					ps.setString(7, u.getMOV_BUDGET());
					ps.setString(8, u.getABOUT_MOV());
					ps.setString(9, u.getACT1_NAME());
					ps.setString(10, u.getACT1_ROLE());
					ps.setString(11, u.getACT2_NAME());
					ps.setString(12, u.getACT2_ROLE());
					ps.setString(13, u.getDIR_NAME());
					ps.setLong(14, u.getDIR_PHONO());
					ps.setString(15, u.getPRO_NAME());
					ps.setLong(16, u.getPRO_PHONO());
					ps.setString(17, u.getRATINGS());
					ps.setInt(18, u.getNO_OF_RATINGS());
					ps.setString(19, u.getCategory1());
					ps.setString(20, u.getCategory1());
					ps.setString(21, u.getCategory1());
					ps.setString(22, u.getCategory1());
					ps.setString(23, u.getCategory1());
					ps.setInt(24, u.getMOV_ID());
					status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(User u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from moviedatabase.movie47  where MOV_ID =?;");
			ps.setInt(1, u.getMOV_ID());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<User> getAllRecords() {
		List<User> list = new ArrayList<User>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(" select m.mov_id , m.mov_name,m.mov_year,m.mov_time,m.mov_lang,m.mov_rel_date,m.mov_rel_country,m.mov_budget,m.about_mov,l.category1,l.category2,l.category3,l.category4,l.category5 , a.act1_name , c.act1_role, a.act2_name , c.act2_role , d.dir_name , d.dir_phono , p.pro_name , p.pro_phono , r.ratings,no_of_ratings from moviedatabase.movie47 m, moviedatabase.actor47 a , moviedatabase.director47 d, moviedatabase.producer47 p,moviedatabase.movie_casting47 c,moviedatabase.reviews47 r , moviedatabase.category47 l where m.mov_id = a.mov_id and m.mov_id = d.mov_id and m.mov_id = c.mov_id and m.mov_id = p.mov_id and m.mov_id = r.mov_id and m.mov_id = l.mov_id group by mov_id;");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) { 
				User u = new User();
				u.setMOV_ID(rs.getInt("mov_id"));
				u.setMOV_NAME(rs.getString("mov_name"));
				u.setMOV_YEAR(rs.getInt("mov_year"));
				u.setMOV_TIME(rs.getString("mov_time"));
				u.setMOV_LANG(rs.getString("mov_lang"));
				u.setMOV_REL_DATE(rs.getString("mov_rel_date"));
				u.setMOV_REL_COUNTRY(rs.getString("mov_rel_country"));
				u.setMOV_BUDGET(rs.getString("mov_budget"));
				u.setABOUT_MOV(rs.getString("about_mov"));
				u.setACT1_NAME(rs.getString("act1_name"));
				u.setACT1_ROLE(rs.getString("act1_role"));
				u.setACT2_NAME(rs.getString("act2_name"));
				u.setACT2_ROLE(rs.getString("act2_role"));
				u.setDIR_NAME(rs.getString("dir_name"));
				u.setDIR_PHONO(rs.getLong("dir_phono"));
				u.setPRO_NAME(rs.getString("pro_name"));
				u.setPRO_PHONO(rs.getLong("pro_phono"));
				u.setRATINGS(rs.getString("ratings"));
				u.setNO_OF_RATINGS(rs.getInt("no_of_ratings"));
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static User getRecordById(int MOV_ID) {
		User u = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select m.mov_id ,m.mov_name,m.mov_year,m.mov_time,m.mov_lang,m.mov_rel_date,m.mov_rel_country,m.mov_budget,m.about_mov ,l.category1,l.category2,l.category3,l.category4,l.category5 , a.act1_name , c.act1_role, a.act2_name , c.act2_role , d.dir_name , d.dir_phono , p.pro_name , p.pro_phono , r.ratings,no_of_ratings from moviedatabase.movie47 m, moviedatabase.actor47 a , moviedatabase.director47 d, moviedatabase.producer47 p,moviedatabase.movie_casting47 c,moviedatabase.reviews47 r , moviedatabase.category47 l where m.mov_id=?;");
			ps.setInt(1, MOV_ID);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new User();
				u.setMOV_ID(rs.getInt("MOV_ID"));
				u.setMOV_NAME(rs.getString("mov_name"));
				u.setMOV_YEAR(rs.getInt("mov_year"));
				u.setMOV_TIME(rs.getString("mov_time"));
				u.setMOV_LANG(rs.getString("mov_lang"));
				u.setMOV_REL_DATE(rs.getString("mov_rel_date"));
				u.setMOV_REL_COUNTRY(rs.getString("mov_rel_country"));
				u.setMOV_BUDGET(rs.getString("mov_budget"));
				u.setABOUT_MOV(rs.getString("about_mov"));
				u.setACT1_NAME(rs.getString("act1_name"));
				u.setACT1_ROLE(rs.getString("act1_role"));
				u.setACT2_NAME(rs.getString("act2_name"));
				u.setACT2_ROLE(rs.getString("act2_role"));
				u.setDIR_NAME(rs.getString("dir_name"));
				u.setDIR_PHONO(rs.getLong("dir_phono"));
				u.setPRO_NAME(rs.getString("pro_name"));
				u.setPRO_PHONO(rs.getLong("pro_phono"));
				u.setRATINGS(rs.getString("ratings"));
				u.setNO_OF_RATINGS(rs.getInt("no_of_ratings"));
				u.setCategory1(rs.getString("category1"));
				u.setCategory2(rs.getString("category2"));
				u.setCategory3(rs.getString("category3"));
				u.setCategory4(rs.getString("category4"));
				u.setCategory5(rs.getString("category5"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
	}
	

