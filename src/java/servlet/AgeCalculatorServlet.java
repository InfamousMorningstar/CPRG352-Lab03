package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 827097
 */
public class AgeCalculatorServlet extends HttpServlet {

   


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
        return;
       
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String ageInput = request.getParameter("user_age");
        
        request.setAttribute("userAge", ageInput);
        
        if (ageInput == null || ageInput.equals("")) {
            request.setAttribute("message", "You must give you current age.");
            
            
            getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
            return;
            
          
        }
        else if (ageInput.matches("[A-Za-z]{1,50}")) {
            request.setAttribute("message", "You must enter a number.");
        }
        else {
            int nextAge = Integer.parseInt(ageInput);
            nextAge++;
            request.setAttribute("message", "Your age next birthday will be " + nextAge);
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
