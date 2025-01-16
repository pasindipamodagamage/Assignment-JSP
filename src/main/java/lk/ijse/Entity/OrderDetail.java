package lk.ijse.Entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Author: pasindi
 * Date: 1/16/25
 * Time: 5:48 PM
 * Description:
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class OrderDetail {
    private String id;
    private String orderId;
    private String productId;
}
