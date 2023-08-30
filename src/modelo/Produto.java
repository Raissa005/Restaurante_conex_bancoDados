package modelo;

import java.util.UUID;

public class Produto {

    private UUID uuid;
    private String nome;
    private String ingredientes;
    private double preco;
    private int pessoasServidas;
    private boolean gluten;
    private boolean lactose;

    public Produto(UUID uuid) {
        this.uuid = uuid;
    }

    
}
