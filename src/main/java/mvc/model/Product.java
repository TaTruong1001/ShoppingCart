package mvc.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "Product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int productId;
    private String productName;
    private String poductDescription;
    private double unitPrice;
    @OneToMany(mappedBy = "product", fetch = FetchType.EAGER)
    private List<OrderDetails> orderDetail;

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getPoductDescription() {
        return poductDescription;
    }

    public void setPoductDescription(String poductDescription) {
        this.poductDescription = poductDescription;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public List<OrderDetails> getOrderDetail() {
        return orderDetail;
    }

    public void setOrderDetail(List<OrderDetails> orderDetail) {
        this.orderDetail = orderDetail;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productId=" + productId +
                ", productName='" + productName + '\'' +
                ", poductDescription='" + poductDescription + '\'' +
                ", unitPrice=" + unitPrice +
                ", orderDetail=" + orderDetail.toString() +
                '}';
    }
}
