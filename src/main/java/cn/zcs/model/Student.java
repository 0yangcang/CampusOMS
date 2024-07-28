package cn.zcs.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Student {

  private long stuId;
  private String stuName;
  private long stuAge;
  private String stuGender;
  

}
