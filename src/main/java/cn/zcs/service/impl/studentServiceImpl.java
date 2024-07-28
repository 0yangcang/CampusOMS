package cn.zcs.service.impl;

import cn.zcs.dao.StudentMapper;
import cn.zcs.model.Student;
import cn.zcs.service.studentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class studentServiceImpl implements studentService {
    @Autowired
    private StudentMapper studentMapper;
    @Override
    public List<Student> queryAllStudent() {
        return studentMapper.queryAll();
    }
}
