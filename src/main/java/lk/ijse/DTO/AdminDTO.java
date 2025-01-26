package lk.ijse.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Author: pasindi
 * Date: 1/16/25
 * Time: 5:01 PM
 * Description:
 */

@AllArgsConstructor
@NoArgsConstructor
@Data

public class AdminDTO {
    private String id;
    private String name;
    private String email;
    private int contact;
    private String userName;
    private String password;
}
