package mvc.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CartEntity {
    private Order order;
    private final List<CartEntity> cartLines = new ArrayList<CartEntity>();
}
