
package constructor;

import java.util.UUID;

public class Main {
    
    public static void main(String[] args) {
        
        UUID uuid = UUID.randomUUID();
        String text = uuid.toString();
        System.out.println(text);
    }
}
