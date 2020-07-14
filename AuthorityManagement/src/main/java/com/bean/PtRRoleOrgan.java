package com.bean;

public class PtRRoleOrgan {
    private Integer dutyid;

    private String name;

    private Integer organUuid;

    private Integer roleUuid;

    public Integer getDutyid() {
        return dutyid;
    }

    public void setDutyid(Integer dutyid) {
        this.dutyid = dutyid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getOrganUuid() {
        return organUuid;
    }

    public void setOrganUuid(Integer organUuid) {
        this.organUuid = organUuid;
    }

    public Integer getRoleUuid() {
        return roleUuid;
    }

    public void setRoleUuid(Integer roleUuid) {
        this.roleUuid = roleUuid;
    }
}