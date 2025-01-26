package lk.ijse.DTO.EntityTM;

import lk.ijse.DTO.AdminDTO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Author: pasindi
 * Date: 1/26/25
 * Time: 8:19 AM
 * Description:
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdminTM extends AdminDTO {
    private String id;
    private String name;
    private String email;
    private int contact;
    private String userName;
    private String password;
}
