import java.util.*;

public class ToBase64 {

   public static void main(String[] args) {
       HashMap<String, byte[]> e = encode(args);
       for (String s : e.keySet()) {
         System.out.print("[" + s + "] : ");
         for (byte b : e.get(s)) {
            System.out.print(b + " ");
         }
         System.out.println();
       }
   }

   private static HashMap<String, byte[]> encode(String ... s) {
      Base64.Encoder encoder = Base64.getEncoder();
      HashMap<String, byte[]> arr = new HashMap<String, byte[]>();
      for (String str : s) {
         arr.put(str, encoder.encode(str.getBytes()));
      }
      return arr;
   }
}
