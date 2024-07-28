package cn.zcs.dao;

import cn.zcs.model.Student;

import java.util.List;

public interface StudentMapper {
    int insert(Student student);

    int deleteByPrimaryKey(Integer id);

    Student queryByPrimaryKey(Integer id);

    List<Student> queryAll();
}
