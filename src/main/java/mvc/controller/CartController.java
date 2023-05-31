//package mvc.controller;
//
//import mvc.model.OrderDetails;
//import mvc.model.Product;
//import mvc.repository.OrderDetailsRepository;
//import mvc.repository.OrderRepository;
//import mvc.repository.ProductRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//
//import static org.springframework.web.bind.annotation.RequestMethod.GET;
//import static org.springframework.web.bind.annotation.RequestMethod.POST;
//
//@Controller
//public class CartController {
//    @Autowired
//    OrderRepository orderRepository;
//    @Autowired
//    OrderDetailsRepository orderDetailsRepository;
//    @Autowired
//    ProductRepository productRepository;
//    @RequestMapping(value = "/addCart/{id}")
//    public String addItem(HttpSession session, @PathVariable int id){
//        Product product = productRepository.findById(id).get();
//        session.setAttribute("cartItem", product);
//        return "Cart";
//    }
//    @RequestMapping(value = "/addCart/{id}")
//    public String addItem(HttpServletRequest request,Model model){
//        Product cartItem = (Product) request.getSession().getAttribute("cartItem");
//        model.addAttribute("cartItem",cartItem);
//        return "Cart";
//    }
//}
