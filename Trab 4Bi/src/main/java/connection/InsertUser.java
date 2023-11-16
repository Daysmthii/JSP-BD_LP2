package connection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/criaUser")
public class InsertUser extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try {
			Connection con = DatabaseConnection.initializeDatabase();
            PreparedStatement st = con.prepareStatement("insert into usuarios values(?,?,?,?,?)");
            
            st.setString(1, request.getParameter("id"));
            st.setString(2, request.getParameter("email"));
            st.setString(3, request.getParameter("senha"));
            st.setString(4, request.getParameter("nome"));
            st.setString(5, request.getParameter("apelido"));
            st.executeUpdate();
            st.close();
            con.close();
            
        	response.sendRedirect("login.jsp");
			
		} catch (Exception e) {
            e.printStackTrace();
        }
	}

}
