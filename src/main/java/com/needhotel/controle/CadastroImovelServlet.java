package com.needhotel.controle;

import com.needhotel.modelo.dao.implementacao.ImovelDaoImpl;
import com.needhotel.modelo.domain.Imovel;
import com.needhotel.modelo.domain.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/cadastrarImovel")
public class CadastroImovelServlet extends HttpServlet {

    protected void doGet (HttpServletRequest req, HttpServletResponse resp){
        doPost(req, resp);
    }

    protected void doPost (HttpServletRequest req, HttpServletResponse resp){
        ImovelDaoImpl imovelDao = new ImovelDaoImpl();
        try {
            HttpSession session = req.getSession();
            String etapa = (String) session.getAttribute("etapa");
            if (etapa == null){
                session.setAttribute("etapa", "1");
                req.getRequestDispatcher("cadastroImovel.jsp").forward(req, resp);
            } else if (etapa.equals("1")){
                Imovel imovel = etapa1(req);
                System.out.println(imovel);
                session.setAttribute("etapa1", imovel);
                session.setAttribute("etapa", "2");
                req.getRequestDispatcher("cadastroImovel.jsp").forward(req, resp);
            } else if (etapa.equals("2")){
                String lista[] = req.getParameterValues("comidadesImovel");

                session.setAttribute("etapa", null);
                req.getRequestDispatcher("home.jsp").forward(req, resp);
            }
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private Imovel etapa1(HttpServletRequest req) {
        Imovel imovel = new Imovel();
        HttpSession session = req.getSession();
        Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
        imovel.setProprietario(usuario.getCpf());
        imovel.setBairro(req.getParameter("bairroImovel"));
        imovel.setCep(req.getParameter("cepImovel"));
        imovel.setCidade(req.getParameter("cidadeImovel"));
        imovel.setEstado(req.getParameter("estadoImovel"));
        imovel.setValor(Float.valueOf(req.getParameter("valorImovel")));
        imovel.setNome(req.getParameter("nomeImovel"));
        imovel.setRua(req.getParameter("ruaImovel"));
        imovel.setNumero(req.getParameter("numeroImovel"));
        imovel.setDisponibilidade(true);
        return imovel;
    }
}

