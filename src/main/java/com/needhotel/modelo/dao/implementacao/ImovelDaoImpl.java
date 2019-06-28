package com.needhotel.modelo.dao.implementacao;

import com.needhotel.modelo.conexao.ConnectionFactory;
import com.needhotel.modelo.dao.interfaces.ImovelDao;
import com.needhotel.modelo.domain.Imovel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ImovelDaoImpl implements ImovelDao {

    ConnectionFactory factory;

    public ImovelDaoImpl() {
        factory = new ConnectionFactory();
    }

    @Override
    public Boolean cadastrarImovel(Imovel imovel) {
        String query = "INSERT INTO imovel(id, proprietario, nome, rua, bairro, numero, cep, cidade, estado, valor, disponibilidade) " +
                "VALUES (id=?, proprietario=?, nome=?, rua=?, bairro=?, numero=?, cep=?, cidade=?, estado=?, valor=?, disponibilidade=?)";
        try(Connection connection = factory.getConnection()){
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, imovel.getId());
            statement = setStatement(statement, imovel);
            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public Boolean cadastrarFotosImovel(String imovel, String path) {
        String query = "INSERT INTO fotosimovel(id_imovel, foto) VALUES (?,?)";
        try(Connection connection = factory.getConnection()){
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, imovel);
            statement.setString(2, path);

            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Boolean deletarImovel(String id) {
        String query = "DELETE FROM imovel WHERE id = ?";
        String query1 = "DELETE FROM fotosimovel WHERE id_imovel = ?";
        try (Connection connection = factory.getConnection()){
            PreparedStatement statement = connection.prepareStatement(query);
            PreparedStatement statement1 = connection.prepareStatement(query1);
            statement.setString(1, id);
            statement1.setString(1, id);

            return statement.executeUpdate() > 0 && statement1.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public Boolean atualizarImovel(String id, Imovel imovel) {
        String query = "UPDATE imovel" +
                " SET id=?, proprietario=?, nome=?, rua=?, bairro=?, numero=?, cep=?, cidade=?, estado=?, valor=?, disponibilidade=?";
        try(Connection connection = factory.getConnection()){
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, id);
            statement = setStatement(statement, imovel);

            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Imovel> buscarPorNome(String nome) {
        String query = "SELECT * FROM imovel WHERE nome = ?";
        List<Imovel> imoveis =  new ArrayList<>();
        try(Connection connection = factory.getConnection()){
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, nome);
            ResultSet resultSet = statement.executeQuery();
            return imoveis = setListaImoveis(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Imovel> buscarPorCidade(String cidade) {
        String query = "SELECT * FROM imovel WHERE cidade = ?";
        List<Imovel> imoveis = new ArrayList<>();
        try(Connection connection = factory.getConnection()){
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, cidade);
            ResultSet resultSet = statement.executeQuery();
            return imoveis = setListaImoveis(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Imovel> setListaImoveis(ResultSet resultSet) throws SQLException {
        List<Imovel> imoveis = new ArrayList<>();
        while (resultSet.next()){
            Imovel imovel = new Imovel();
            imovel.setId(resultSet.getString("id"));
            imovel.setProprietario(resultSet.getString("proprietario"));
            imovel.setNome(resultSet.getString("nome"));
            imovel.setRua(resultSet.getString("rua"));
            imovel.setBairro(resultSet.getString("bairro"));
            imovel.setNumero(resultSet.getString("numero"));
            imovel.setCep(resultSet.getString("cep"));
            imovel.setCidade(resultSet.getString("cidade"));
            imovel.setEstado(resultSet.getString("estado"));
            imovel.setValor(resultSet.getFloat("valor"));
            imovel.setDisponibilidade(resultSet.getBoolean("disponibilidade"));
            imovel.setFotos(getfotos(resultSet.getString("id")));
            imoveis.add(imovel);
        }
        return imoveis;
    }

    public List<String> getfotos(String imovel){
        List<String> fotos = new ArrayList<>();
        String query = "SELECT foto FROM fotosimovel WHERE id_imovel = ?";
        try(Connection connection = factory.getConnection()){
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, imovel);
            ResultSet resultSet = statement.executeQuery();

            while(resultSet.next()){
                fotos.add(resultSet.getString("foto"));
            }
        return fotos;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public PreparedStatement setStatement(PreparedStatement statement, Imovel imovel) throws SQLException {
        statement.setString(2, imovel.getProprietario());
        statement.setString(3, imovel.getNome());
        statement.setString(4, imovel.getRua());
        statement.setString(5, imovel.getBairro());
        statement.setString(6, imovel.getNumero());
        statement.setString(7, imovel.getCep());
        statement.setString(8, imovel.getCidade());
        statement.setString(9, imovel.getEstado());
        statement.setFloat(10, imovel.getValor());
        statement.setBoolean(11, imovel.isDisponibilidade());
        return statement;
    }
}
