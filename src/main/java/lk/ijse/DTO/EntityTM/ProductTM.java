package lk.ijse.DTO.EntityTM;

import lk.ijse.DTO.ProductDTO;
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
public class ProductTM extends ProductDTO {
    private String id;
    private String description;
    private Double unitPrice;
    private int qtyOnHand;
}
