package lk.ijse.DTO.EntityTM;

import lk.ijse.DTO.CustomerDTO;
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
public class CustomerTM extends CustomerDTO {
    private String id;
    private String name;
    private String address;
    private String contact;
    private String userName;
    private String password;
}
