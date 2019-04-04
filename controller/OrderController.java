package com.ecomm.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.Model.Cart;
import com.ecomm.Model.OrderDetail;
import com.ecomm.Model.UserDetail;
import com.ecomm.dao.CartDao;
import com.ecomm.dao.OrderDao;
import com.ecomm.dao.UserDAO;
@Controller
public class OrderController {
	
	@Autowired
	CartDao cartDao;

	@Autowired
	OrderDao orderDao;

	@Autowired
	UserDAO userDao;

	@RequestMapping(value="/pay")
	public String PaymentProcess(@RequestParam("PaymentMode")String paymentMode,Model l,HttpSession session)
	{
		String UserName=(String)session.getAttribute("Username");
		List<Cart> listcartitems=cartDao.listcartitems(UserName);
		
		OrderDetail orderdetail=new OrderDetail();
		orderdetail.setUserName(UserName);
		orderdetail.setOrderDate(new Date());
		orderdetail.setPaymentmode(paymentMode);
		orderdetail.setTotalAmount(this.calcGrandtotal(cartDao.listcartitems(UserName)));
		l.addAttribute("labelcart",cartDao.listcartitems(UserName));
		l.addAttribute("paymentDetail",orderdetail);
		
	     if(orderDao.UpdatecartitemStatus(UserName))
		{
			orderDao.PaymentProcess(orderdetail);
			l.addAttribute("labelcart",listcartitems);
			l.addAttribute("paymentDetail",orderdetail);
			UserDetail userd=userDao.getuser(UserName);
		     l.addAttribute("userdetail",userd);
		}
		return "Receipt";
	}
	public int calcGrandtotal(List<Cart> listcartitems)
	{
		int grandtotal=0;
		int count=0;
		while(count<listcartitems.size())
		{
		Cart cart=listcartitems.get(count);
		grandtotal=grandtotal+(cart.getQuantity() * cart.getPrice());
		count++;
		}

	  return grandtotal;
	}

}
