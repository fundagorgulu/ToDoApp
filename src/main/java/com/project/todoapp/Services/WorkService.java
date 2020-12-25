package com.project.todoapp.Services;
import com.project.todoapp.Entities.Work;
import com.project.todoapp.Repositories.WorkRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class WorkService {

    private final WorkRepository workRepo;

    public WorkService(WorkRepository workRepo) {
        this.workRepo = workRepo;
    }


    public List<Work> allWorks() {
        return workRepo.findAll();
    }


    public void addWork(Work work){
        
        workRepo.save(work);
    }
    public  List<Work> findWorksByWorkOwner(String workOwner){
        return workRepo.findWorksByWorkOwner(workOwner);
    }
    public void deleteWork(Integer id){
        workRepo.deleteById(id);
    }
    public Work findWorkById(Integer id){
        return workRepo.findWorkById(id);
    }
}
