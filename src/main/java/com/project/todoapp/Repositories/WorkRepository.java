package com.project.todoapp.Repositories;
import com.project.todoapp.Entities.Work;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;


@Repository
public interface WorkRepository extends JpaRepository<Work, Integer> {
    List<Work> findWorksByWorkOwner(String workOwner);
    Work findWorkById(Integer id);

}
