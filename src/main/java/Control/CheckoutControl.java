package Control;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.FoodDAO;
import Entity.Account;
import Entity.Cart;
import Entity.Item;

@WebServlet("/cart-check-out")
public class CheckoutControl extends HttpServlet {
    private static final long serialVersionUID = 1L;



    @SuppressWarnings("unchecked")
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try(PrintWriter out = response.getWriter()){
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            Date date = new Date();
            ArrayList<Item> cart_list = (ArrayList<Item>) request.getSession().getAttribute("cart-list");
            Account auth = (Account) request.getSession().getAttribute("acc");
            String nguoiNhan = request.getParameter("nguoiNhan");
            String diaChiNhan = request.getParameter("diaChiNhan");
            String soDT = request.getParameter("soDT");
            if(cart_list != null && auth!=null) {
                for(Item c:cart_list) {
                    Cart order = new Cart();
                    order.setId(c.getId());
                    order.setUserID(auth.getuID());
                    order.setQuantity(c.getQuantity());
                    order.setDateCreate(formatter.format(date));
                    order.setNguoiNhan(request.getParameter("nguoiNhan"));
                    order.setDiaChiNhan(request.getParameter("diaChiNhan"));
                    order.setSoDT(request.getParameter("soDT"));


                    FoodDAO oDao = new FoodDAO();
                    boolean result = oDao.insertOrder(order);
                    if(!result) break;
                }
                cart_list.clear();
                response.sendRedirect("finish.jsp");
            }else {
                if(auth==null) {
                    response.sendRedirect("login.jsp");
                }
                response.sendRedirect("cart.jsp");
            }
        } catch (Exception e) {

            e.printStackTrace();
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
