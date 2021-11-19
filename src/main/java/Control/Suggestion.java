package Control;


import DAO.FoodDAO;
import Entity.Food;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Suggestion", urlPatterns = {"/suggestion"})
public class Suggestion extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String image = request.getParameter("image");
        String price = request.getParameter("price");
        String script = request.getParameter("script");
        FoodDAO dao = new FoodDAO();
        List<Food> list = dao.getAllSuggestion(id,name,image,price,script);
        request.setAttribute("listS",list);
        request.getRequestDispatcher("suggestion.jsp").forward(request, response);



        /*
        response.setContentType("text/html;charset=UTF-8");

        FoodDAO foodDAO = new FoodDAO();

*/
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}