package lk.ijse.Entity;

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
public class Product {
    private String id;
    private String categoryId;
    private String description;
    private Double unitPrice;
    private int qtyOnHand;
}
