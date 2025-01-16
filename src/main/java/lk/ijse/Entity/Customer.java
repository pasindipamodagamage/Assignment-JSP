package lk.ijse.Entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Author: pasindi
 * Date: 1/16/25
 * Time: 5:47 PM
 * Description:
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Customer {
    private String id;
    private String name;
    private String address;
    private String position;
    private String contact;
}
