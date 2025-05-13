/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SecondaryTable;
import javax.persistence.SecondaryTables;
import javax.persistence.Table;
import javax.persistence.Temporal;

/**
 *
 * @author USER
 */
@Entity
@Table(name = "ACCOUNT_HOLDER")
@SecondaryTables({@SecondaryTable(name = "CONTACTS"),@SecondaryTable(name = "ADDRESS")})
public class AccountHolder implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String fullName;
    @Column(table = "CONTACTS" , nullable = false, length = 20)
    private String cellNo;
    @Column(table = "CONTACTS", nullable = false, length = 20)
    private String email;
    @Column(table = "ADDRESS",nullable = false,length = 20)
    private String town;
    @Column(table = "ADDRESS",nullable = false,length = 20)
    private String village;
    @Column(table = "ADDRESS",nullable = false,length = 20)
    private Integer code;
    @Temporal(javax.persistence.TemporalType.TIMESTAMP)
    private Date date;
    private Double balance;

    public AccountHolder() {
    }

    public AccountHolder(Long id, String fullName, String cellNo, String email, String town, String village, Integer code, Date date, Double balance) {
        this.id = id;
        this.fullName = fullName;
        this.cellNo = cellNo;
        this.email = email;
        this.town = town;
        this.village = village;
        this.code = code;
        this.date = date;
        this.balance = balance;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }

  

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getCellNo() {
        return cellNo;
    }

    public void setCellNo(String cellNo) {
        this.cellNo = cellNo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTown() {
        return town;
    }

    public void setTown(String town) {
        this.town = town;
    }

    public String getVillage() {
        return village;
    }

    public void setVillage(String village) {
        this.village = village;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
    
    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AccountHolder)) {
            return false;
        }
        AccountHolder other = (AccountHolder) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "za.ac.tut.entity.AccountHolder[ id=" + id + " ]";
    }
    
}
