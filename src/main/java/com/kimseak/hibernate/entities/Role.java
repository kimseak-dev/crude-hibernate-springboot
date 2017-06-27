package com.kimseak.hibernate.entities;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * Created by kimseak on 6/27/17.
 */
@Entity
@Table(name = "role")
public class Role implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int roleid;

    @NotNull
    @Column(name = "role")
    private String role;

    public int getRoleid() {
        return roleid;
    }

    public Role setRoleid(int roleid) {
        this.roleid = roleid;
        return this;
    }

    public String getRole() {
        return role;
    }

    public Role setRole(String role) {
        this.role = role;
        return this;
    }
}
