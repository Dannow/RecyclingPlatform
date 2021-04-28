package service;

import dao.CooperationMapper;
import domain.Cooperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CooperationServiceImpl implements CooperationService{
    @Autowired
    CooperationMapper cooperationMapper;
    //添加申请
    public void addCooperation(Cooperation cooperation){
        cooperationMapper.addCooperation(cooperation);
    }
}
