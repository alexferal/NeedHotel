package com.needhotel.controle;

import com.needhotel.modelo.domain.Usuario;
import com.needhotel.modelo.dao.implementacao.UsuarioDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@WebServlet("/cadastrar")
public class CadastroServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp){

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UsuarioDaoImpl usuarioDaoImpl = new UsuarioDaoImpl();
        HttpSession session = req.getSession();

        if (session.getAttribute("firstRegister") == null){
            Usuario usuario = new Usuario();
            usuario.setCpf(req.getParameter("cpf"));
            usuario.setTelefone(req.getParameter("telefone"));
            usuario.setNome(req.getParameter("primeiroNome"));
            usuario.setSobreNome(req.getParameter("sobrenome"));

            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
            usuario.setDataNascimento(LocalDate.parse(req.getParameter("nascimento"), formatter));

            session.setAttribute("firstRegister", usuario);
            req.getRequestDispatcher("cadastro.jsp").forward(req, resp);
        }else {
            Usuario usuario = (Usuario)session.getAttribute("firstRegister");
            usuario.setEmail(req.getParameter("email"));
            usuario.setSenha(req.getParameter("senha"));
            usuarioDaoImpl.cadastrarUsuario(usuario);
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
