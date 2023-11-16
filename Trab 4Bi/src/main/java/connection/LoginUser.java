package connection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entidades.Usuario;

@WebServlet("/loginUser")
public class LoginUser extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			Connection con = DatabaseConnection.initializeDatabase();

			PreparedStatement stEmail = con.prepareStatement("select email from usuarios where email = (?)");
			stEmail.setString(1, request.getParameter("email"));
			ResultSet rsEmail = stEmail.executeQuery();

			if (rsEmail.next() != false) {

				PreparedStatement st = con.prepareStatement(
						"select id, email, nome, apelido from usuarios where email = (?) and senha = (?)");
				st.setString(1, request.getParameter("email"));
				st.setString(2, request.getParameter("senha"));

				ResultSet rs = st.executeQuery();

				if (rs.next() != false) {
					int id = rs.getInt(1);
					String email = rs.getString(2);
					String nome = rs.getString(3);
					String apelido = rs.getString(4);

					Usuario user = new Usuario();
					user.setId(id);
					user.setEmail(email);
					user.setNome(nome);
					user.setApelido(apelido);
					
					HttpSession sessao = request.getSession();
					sessao.setAttribute("usuario", user);
					response.sendRedirect("./getLivros");
				} else {
					request.setAttribute("mensagemErro", "Senha incorreta!");
					RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
					dispatcher.forward(request, response);
				}
				rs.close();
				st.close();

			} else {
				request.setAttribute("mensagemErro", "Email não cadastrado");
				RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
			}

			rsEmail.close();
			stEmail.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
