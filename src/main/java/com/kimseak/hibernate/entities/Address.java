package com.kimseak.hibernate.entities;

import javax.persistence.Embeddable;

/**
 * Created by kimseak on 6/27/17.
 */
@Embeddable
public class Address {
    private String address1;
    private String address2;

    public String getAddress1() {
        return address1;
    }

    public Address setAddress1(String address1) {
        this.address1 = address1;
        return this;
    }

    public String getAddress2() {
        return address2;
    }

    public Address setAddress2(String address2) {
        this.address2 = address2;
        return this;
    }
}
