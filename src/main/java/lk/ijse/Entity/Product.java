package lk.ijse.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Author: pasindi
 * Date: 1/16/25
 * Time: 5:55 PM
 * Description:
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
//@Entity
//@Table(name = "product")
public class Product {
//    @Id
    private String id;
    private String categoryId;
    private String description;
    private Double unitPrice;
    private int qtyOnHand;
    private String imgUrl;
}
