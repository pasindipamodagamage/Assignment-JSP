package lk.ijse.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
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
//@Entity
//@Table(name = "orders")
public class Orders {
//    @Id
    private String id;
    private String adminId;
    private String customerId;
    private String cardId;
    private Date date;
}
