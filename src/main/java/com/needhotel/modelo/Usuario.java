package com.needhotel.modelo;

import java.time.LocalDate;
import java.util.Date;

public class Usuario {

    private String cpf;
    private String nome;
    private String sobreNome;
    private String telefone;
    private LocalDate dataNascimento;
    private String email;
    private String senha;

    public  Usuario(){}

    public Usuario(String email, String senha) {
        this.email = email;
        this.senha = senha;
    }

    public Usuario(String cpf, String nome, String sobreNome, String telefone, LocalDate dataNascimento, String email, String senha) {
        this.cpf = cpf;
        this.nome = nome;
        this.sobreNome = sobreNome;
        this.telefone = telefone;
        this.dataNascimento = dataNascimento;
        this.email = email;
        this.senha = senha;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobreNome() {
        return sobreNome;
    }

    public void setSobreNome(String sobreNome) {
        this.sobreNome = sobreNome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public LocalDate getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(LocalDate dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
}
