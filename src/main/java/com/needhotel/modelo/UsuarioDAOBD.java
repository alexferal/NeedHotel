package com.needhotel.modelo;

import com.needhotel.modelo.conexao.ConnectionFactory;

import java.sql.*;

public class UsuarioDAOBD implements UsuarioDAO {

    private Connection conexao;

    public UsuarioDAOBD() {
        ConnectionFactory factory = new ConnectionFactory();
        this.conexao = factory.getConnection();
    }

    @Override
    public Boolean autenticacao(String login, String senha) {

        try{
            PreparedStatement statement = this.conexao.prepareStatement(
                    "SELECT email, senha FROM usuario WHERE email = ? AND senha = ?"
            );
            statement.setString(1, login);
            statement.setString(2,senha);

            ResultSet resultSet = statement.executeQuery();

            return resultSet.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;

    }

    @Override
    public Boolean cadastro(Usuario usuario) {
        return null;
    }
}
