package com.example.now;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="complaint")
public class Comp {
  
  @Column(name = "sno", unique = true, nullable = false)
  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)
  private int sno;
  public int getSno() {
    return sno;
  }
  public void setSno(int sno) {
    this.sno = sno;
  }
  private String comp;
  private String name,pno,email,dept,desig;
  private int eid;
  public int getEid() {
    return eid;
  }
  public void setEid(int eid) {
    this.eid = eid;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String getPno() {
    return pno;
  }
  public void setPno(String pno) {
    this.pno = pno;
  }
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public String getDept() {
    return dept;
  }
  public void setDept(String dept) {
    this.dept = dept;
  }
  public String getDesig() {
    return desig;
  }
  public void setDesig(String desig) {
    this.desig = desig;
  }
  public String getComp() {
    return comp;
  }
  public void setComp(String comp) {
    this.comp = comp;
  }
  

}