
package za.ac.tut.model;

import javax.servlet.http.HttpSession;

public class PalindromeManager {

    public PalindromeManager() {
     }
    
    public String invalid(String word,HttpSession session){
        String flag = "false";
        String reverse = reverseString(word);
        if(word.equals(reverse)){
            flag="true";
        Integer count = (Integer) session.getAttribute("correctGuess");
        count++;
        session.setAttribute("correctGuess", count); 
        }
        
        Integer count = (Integer) session.getAttribute("icount");
        count++;
        session.setAttribute("icount", count);
        
        return flag;
        
    }
    
    private String reverseString(String input) {
        StringBuilder reversed = new StringBuilder();

        for (int i = input.length() - 1; i >= 0; i--) {
            char letter = input.charAt(i);
            reversed.append(letter);
        }

        return reversed.toString();
    }
    
    
}
