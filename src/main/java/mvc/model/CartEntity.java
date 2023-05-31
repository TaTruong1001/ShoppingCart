package mvc.model;


import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class CartEntity {
  private Product product = new Product();
  private int quantity;


    public CartEntity() {
    }

    public CartEntity(Optional<Product> id) {

    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
