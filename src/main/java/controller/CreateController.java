package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClientDAO;
import model.Client;

@WebServlet("/CreateController")
public class CreateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		Client client = new Client();

		client.setNome(req.getParameter("nome"));
		client.setTelefone(req.getParameter("telefone"));
		client.setEmail(req.getParameter("emai-l"));

		try {
			ClientDAO clientDAO = new ClientDAO();
			clientDAO.createClient(client);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
