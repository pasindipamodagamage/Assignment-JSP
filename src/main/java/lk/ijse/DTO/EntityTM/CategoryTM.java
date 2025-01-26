package lk.ijse.DTO.EntityTM;

import lk.ijse.DTO.CategoryDTO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Author: pasindi
 * Date: 1/16/25
 * Time: 5:45 PM
 * Description:
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class CategoryTM extends CategoryDTO {
    private String id;
    private String description;
//    private String imgUrl;
}
