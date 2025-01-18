package lk.ijse.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Author: pasindi
 * Date: 1/16/25
 * Time: 10:26 PM
 * Description:
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class UserDTO {
    private String customerId;
    private String adminId;
    private String userName;
    private String password;
}
