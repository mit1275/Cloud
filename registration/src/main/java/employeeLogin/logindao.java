package employeeLogin;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

public class logindao {
	String url="jdbc:mysql://localhost:3306/employees";
	String sqlusername="root";
	String sqlpass="rootpassword1";
	String query="select * from amit_111915014_detail where username=? and password=?";
	
	public boolean check(String uname,String pass) throws ClassNotFoundException, SQLException {
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,sqlusername,sqlpass);
	
		PreparedStatement st=con.prepareStatement(query);

		st.setString(1, uname);
		st.setString(2, pass);

		ResultSet rs=st.executeQuery();
		if(rs.next()) {

			String q2="select * from amit_111915014_salary where id=`${query.id}`";
			
			PreparedStatement st1=con.prepareStatement(q2);
			
			 ResultSet rs1=st1.executeQuery(q2);
		        if(rs.next())
		        {

					HttpSession session = request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("welcome.jsp");
		          }
		       else
		       {
		    	   response.sendRedirect("login.jsp");
		       }
		     con.close();
		     }
		    
			
			return true;
		}
		return false;
	}
}
