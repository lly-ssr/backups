package com.bean;

public class PtRole {
    private Integer roleUuid;

    private String roleId;

    private String roleName;

    public Integer getRoleUuid() {
        return roleUuid;
    }

    public void setRoleUuid(Integer roleUuid) {
        this.roleUuid = roleUuid;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId == null ? null : roleId.trim();
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName == null ? null : roleName.trim();
    }
}