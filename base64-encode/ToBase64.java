import java.util.*;

public class ToBase64 {

private static ArrayList<String> _AL = new ArrayList<>();

   public static void main(String[] args) {
       _AL = new ArrayList<String>(List.of(args));
       _AL = removeFirst(_AL);
       if (args[0].equals("-e") || args[0].equals("--encode")) {
           System.out.println("[encoded] : " + encode(_AL));
       } else if (args[0].equals("-d") || args[0].equals("--decode")) {
           System.out.println("[decoded] : " + decode(_AL.get(0)));
       } else {
          showHelp();
       }
   }

   private static void showHelp() {
      System.out.println();
      System.out.println("0==========================================0");
      System.out.println();
      System.out.println("   usage : base64 [COMMAND] [ARGS] ");
      System.out.println();
      System.out.println("     -e, --encode :   encode to base64");
      System.out.println("     -d, --decode :   decode from base64");
      System.out.println();
      System.out.println("0==========================================0");
      System.out.println(); 
   }

   private static String encode(ArrayList<String> s) {
      Base64.Encoder encoder = Base64.getEncoder();
      String s1 = "";
      for (String s2 : s) {
         if (s.indexOf(s2) != s.size() - 1) {
            s1 += s2 + " ";
         } else {
	    s1 += s2;
         }
      }
      return new String(encoder.encode(s1.getBytes()));
   }

   private static String decode(String src) {
       try {
          Base64.Decoder decoder = Base64.getDecoder();
          return new String(decoder.decode(src));
       } catch (Exception e) {
           System.out.println("[ERROR] : " + "\'" + src + "\'" + " cannot be decoded!");
       }
       return "ERROR.";
   }

   private static ArrayList<String> removeFirst(ArrayList<String> list) {
       ArrayList<String> rep = new ArrayList<>();
       for (String s : list) {
          if (!s.equals(list.get(0))) {
             rep.add(s);
          }
       }
       return rep;
   }
}
