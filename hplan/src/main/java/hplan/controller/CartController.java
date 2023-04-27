package hplan.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hplan.dao.CartDAO;
import hplan.dto.CartDTO;


@WebServlet("/cart_servlet/*")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String url = request.getRequestURI().toString();
		String contextPath = request.getContextPath();
		CartDAO dao = new CartDAO();
		if(url.indexOf("productinit.do") != -1) {
			HttpSession session = request.getSession();
			String user_id = (String) session.getAttribute("user_id");
			if(user_id != null) { //로그인 한 경우
				int product_id = Integer.parseInt(request.getParameter("product_id"));
				int amount = Integer.parseInt("");
				CartDTO dto = new CartDTO();
				
				dao.insertCart(dto);		
				
				String page = "/cart/cart_list.jsp";
				response.sendRedirect(contextPath+page);
			}else {
				String page="/member/login.jsp";
				response.sendRedirect(contextPath+page);
			}
			
			
		}else if(url.indexOf("cartList.do") != -1) {
			Map<String, Object> map = new HashMap<>();
			HttpSession session = request.getSession();
			String user_id =(String)session.getAttribute("user_id");
			if(user_id != null) { 
				List<CartDTO> list = dao.listCart(user_id);
				int sumMoney = dao.sumMoney(user_id);
				int fee = sumMoney >= 50000 ? 0 : 3000;
				
				map.put("sumMoney", sumMoney);
				map.put("fee", fee);
				map.put("sum",  sumMoney + fee);
				
				map.put("list", list);
				map.put("count", list.size());
				
				request.setAttribute("map", map);
				String page="/cart/cart_list.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(page);
				rd.forward(request, response);
			}
			
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
