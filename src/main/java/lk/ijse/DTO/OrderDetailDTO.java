package lk.ijse.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Author: pasindi
 * Date: 1/16/25
 * Time: 6:08 PM
 * Description:
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class OrderDetailDTO {
    private String id;
    private String orderId;
    private String productId;
}
