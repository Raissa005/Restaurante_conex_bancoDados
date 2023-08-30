
package modelo;

import java.util.UUID;

public class Comida extends Produto {
   private int gramaPorcao;
   private boolean vegetariano;

    public Comida(UUID uuid) {
        super(uuid);
    }

    public int getGramaPorcao() {
        return gramaPorcao;
    }

    public boolean isVegetariano() {
        return vegetariano;
    }

    public void setGramaPorcao(int gramaPorcao) {
        this.gramaPorcao = gramaPorcao;
    }

    public void setVegetariano(boolean vegetariano) {
        this.vegetariano = vegetariano;
    }
    
    
}
