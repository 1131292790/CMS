package com.cms.model;

import org.springframework.stereotype.Repository;

import java.sql.Date;
import java.sql.Time;

@Repository
public class Attend {
    private String ano;//考勤编号
    private String stime;//上班时间
    private String etime;//下班时间
    private String sno;//员工编号
    private Date adate;//日期

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public String getStime() {
        return stime;
    }

    public void setStime(String stime) {
        this.stime = stime;
    }

    public String getEtime() {
        return etime;
    }

    public void setEtime(String etime) {
        this.etime = etime;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public Date getAdate() {
        return adate;
    }

    public void setAdate(Date adate) {
        this.adate = adate;
    }

    @Override
    public String toString() {
        return "Attend{" +
                "ano='" + ano + '\'' +
                ", stime=" + stime +
                ", etime=" + etime +
                ", sno='" + sno + '\'' +
                ", adate=" + adate +
                '}';
    }
}
