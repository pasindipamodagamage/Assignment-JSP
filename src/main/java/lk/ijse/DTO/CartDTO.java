package lk.ijse.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Author: pasindi
 * Date: 1/16/25
 * Time: 6:05 PM
 * Description:
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class CartDTO {
    private String id;
    private String customerId;
    private String productId;
}
