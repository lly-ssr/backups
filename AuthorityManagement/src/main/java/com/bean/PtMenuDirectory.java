package com.bean;

public class PtMenuDirectory {
    private Integer menuId;

    private String dirCode;

    private String dirName;

    private Integer dirLevelNumber;

    private String parentId;

    private String isitem;

    private Integer dirOrder;

    private String status;

    private String flag;

    private String locale;

    private Integer resUuid;

    public Integer getMenuId() {
        return menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    public String getDirCode() {
        return dirCode;
    }

    public void setDirCode(String dirCode) {
        this.dirCode = dirCode == null ? null : dirCode.trim();
    }

    public String getDirName() {
        return dirName;
    }

    public void setDirName(String dirName) {
        this.dirName = dirName == null ? null : dirName.trim();
    }

    public Integer getDirLevelNumber() {
        return dirLevelNumber;
    }

    public void setDirLevelNumber(Integer dirLevelNumber) {
        this.dirLevelNumber = dirLevelNumber;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId == null ? null : parentId.trim();
    }

    public String getIsitem() {
        return isitem;
    }

    public void setIsitem(String isitem) {
        this.isitem = isitem == null ? null : isitem.trim();
    }

    public Integer getDirOrder() {
        return dirOrder;
    }

    public void setDirOrder(Integer dirOrder) {
        this.dirOrder = dirOrder;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag == null ? null : flag.trim();
    }

    public String getLocale() {
        return locale;
    }

    public void setLocale(String locale) {
        this.locale = locale == null ? null : locale.trim();
    }

    public Integer getResUuid() {
        return resUuid;
    }

    public void setResUuid(Integer resUuid) {
        this.resUuid = resUuid;
    }
}