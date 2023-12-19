package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.DatabaseConnection;
import model.Client;

public class ClientDAO {

	private Connection connection;
	private String sql;

	public ClientDAO() throws SQLException {
		connection = DatabaseConnection.createConnection();
	}

	public void closeConnection() {
		try {
			if (connection != null && !connection.isClosed()) {
				connection.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void createClient(Client client) {
		sql = "INSERT INTO cliente (nome,telefone,email) VALUES (?,?,?)";

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {

			stmt.setString(1, client.getNome());
			stmt.setString(2, client.getTelefone());
			stmt.setString(3, client.getEmail());

			stmt.executeUpdate();

			System.out.println("Cliente criado com sucesso!");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public Client findClient(int id) {
		Client client = null;
		sql = "SELECT * FROM cliente WHERE id=?";

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {

			stmt.setInt(1, id);
			ResultSet r = stmt.executeQuery();

			if (r.next()) {
				client = new Client();
				client.setId(r.getInt("id"));
				client.setNome(r.getString("nome"));
				client.setTelefone(r.getString("telefone"));
				

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return client;
	}

	public void updateClient(Client client) {
		sql = "UPDATE cliente SET id = ?, nome = ?, telefone = ?, email = ? WHERE id = ?";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setString(1, client.getNome());
			stmt.setString(2, client.getTelefone());
			stmt.setString(3, client.getEmail());

			stmt.setInt(5, client.getId());

			stmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deleteClient(int id) {
		sql = "DELETE FROM  cliente WHERE id = ?";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setInt(1, id);
			stmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
