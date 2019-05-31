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
    public Boolean cadastrarUsuario(Usuario usuario) throws SQLException {

        PreparedStatement statement = this.conexao.prepareStatement(
                "INSERT INTO usuarios (cpf, nome, sobreNome, telefone, dataNascimento, email, senha) VALUES (?,?,?,?,?,?,?) ");
        statement.setString(1, usuario.getCpf());
        statement.setString(2, usuario.getNome());
        statement.setString(3, usuario.getSobreNome());
        statement.setString(4, usuario.getTelefone());
        statement.setDate(5, Date.valueOf(usuario.getDataNascimento()));
        statement.setString(6, usuario.getEmail());
        statement.setString(7, usuario.getSenha());

         return statement.executeUpdate() > 0;
    }

}



