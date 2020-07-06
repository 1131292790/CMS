package com.cms.model;

import org.springframework.stereotype.Repository;

import java.util.Date;

@Repository
public class Leave {
    private String lno;//请假编号
    private String sno;//员工编号
    private String ano;//管理员编号
    private String reason;//请假原因
    private String l_time;//申请时间
    private String l_start;//开始时间
    private String l_end;//结束时间

    public String getLno() {
        return lno;
    }

    public void setLno(String lno) {
        this.lno = lno;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getL_time() {
        return l_time;
    }

    public void setL_time(String l_time) {
        this.l_time = l_time;
    }

    public String getL_start() {
        return l_start;
    }

    public void setL_start(String l_start) {
        this.l_start = l_start;
    }

    public String getL_end() {
        return l_end;
    }

    public void setL_end(String l_end) {
        this.l_end = l_end;
    }

    @Override
    public String toString() {
        return "Leave{" +
                "lno='" + lno + '\'' +
                ", sno='" + sno + '\'' +
                ", ano='" + ano + '\'' +
                ", reason='" + reason + '\'' +
                ", l_time=" + l_time +
                ", l_start=" + l_start +
                ", l_end=" + l_end +
                '}';
    }
}
