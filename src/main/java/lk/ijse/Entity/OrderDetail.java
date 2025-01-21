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
 * Time: 5:48 PM
 * Description:
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
//@Entity
//@Table(name = "orderDetail")
public class OrderDetail {
//    @Id
    private String id;
    private String orderId;
    private String productId;
}
