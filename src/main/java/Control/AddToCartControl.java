package Control;

import Entity.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "AddToCartControl",urlPatterns = "/add-to-cart")
public class AddToCartControl extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    @SuppressWarnings("unchecked")
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.setContentType("text/html;charset=UTF-8");
        try(PrintWriter out = response.getWriter()) {
            ArrayList<Item> cartList = new ArrayList<>();

            int id = Integer.parseInt(request.getParameter("id"));
            Item i = new Item();
            i.setId(id);
            i.setQuantity(1);

            HttpSession session = request.getSession();
            ArrayList<Item> item_list = (ArrayList<Item>) session.getAttribute("cart-list");
            if (item_list == null) {
                cartList.add(i);
                session.setAttribute("cart-list", cartList);
                response.sendRedirect("/");
            } else {
                cartList = item_list;

                boolean exist = false;
                for (Item it : item_list) {
                    if (it.getId() == id) {
                        exist = true;
                        response.sendRedirect("SuccessAdd.jsp");

                    }
                }

                if (!exist) {
                    cartList.add(i);
                    response.sendRedirect("/");
                }
            }
        }catch(Exception e) {

        }
    }

}


