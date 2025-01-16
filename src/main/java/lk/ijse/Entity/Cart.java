package lk.ijse.Entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Author: pasindi
 * Date: 1/16/25
 * Time: 5:43 PM
 * Description:
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Cart {
    private String id;
    private String customerId;
    private String productId;
}
