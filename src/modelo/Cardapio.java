package modelo;

import java.util.UUID;

public class Cardapio {
    private UUID uuid;
    private String nome;
    private String descricao;
    private boolean ativo;
    private Turno turno;

    public Cardapio(UUID uuid, boolean ativo) {
        this.uuid = uuid;
        this.ativo = ativo;
    }
    
    public boolean isAtivo() {
        return ativo;
    }

    public String getNome() {
        return nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setAtivo(boolean ativo) {
        this.ativo = ativo;
    }
    
    public boolean desativar(){
        setAtivo(false);
        return true;
    }
}
