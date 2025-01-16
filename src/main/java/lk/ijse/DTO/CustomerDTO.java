package lk.ijse.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Author: pasindi
 * Date: 1/16/25
 * Time: 6:07 PM
 * Description:
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class CustomerDTO {
    private String id;
    private String name;
    private String address;
    private String position;
    private String contact;
}
