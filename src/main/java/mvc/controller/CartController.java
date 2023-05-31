package mvc.controller;

import mvc.model.CartEntity;
import mvc.model.OrderDetails;
import mvc.model.Product;
import mvc.repository.OrderDetailsRepository;
import mvc.repository.OrderRepository;
import mvc.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class CartController {
    @Autowired
    OrderRepository orderRepository;
    @Autowired
    OrderDetailsRepository orderDetailsRepository;
    @Autowired
    ProductRepository productRepository;
    @RequestMapping(value = "/addCart/{id}")
    public String orderItem(@PathVariable(value = "id") int id,Model model, HttpSession session ) {

        if(session.getAttribute("cart") == null){
            List<CartEntity> cart = new ArrayList<CartEntity>();
            cart.add(new CartEntity(this.productRepository.findById(id)));
            session.setAttribute("cart",cart);
        }else {
            List<CartEntity> cart = ( List<CartEntity>)session.getAttribute("cart");
            cart.add(new CartEntity(this.productRepository.findById(id)));
            session.setAttribute("cart",cart);
        }
        return "Cart";
    }

}
