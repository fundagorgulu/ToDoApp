package com.project.todoapp.Entities;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.Date;
@Entity
public class Work {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Integer id;
    @NotEmpty
    private  String description;
    @NotEmpty
    private String endDate;
    @NotEmpty
    private String status;
    @NotEmpty
    private String workOwner;

    public Work(@NotEmpty String description, @NotEmpty String endDate, @NotEmpty String status, @NotEmpty String workOwner) {
        this.description = description;
        this.endDate = endDate;
        this.status = status;
        this.workOwner = workOwner;
    }

    public Work(){}

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getWorkOwner() {
        return workOwner;
    }

    public void setWorkOwner(String workOwner) {
        this.workOwner = workOwner;
    }
}
