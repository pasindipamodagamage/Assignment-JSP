package lk.ijse.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * Author: pasindi
 * Date: 1/16/25
 * Time: 5:50 PM
 * Description:
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class OrdersDTO {
    private String id;
    private String adminId;
    private String customerId;
    private String cardId;
    private Date date;
}
