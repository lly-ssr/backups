package com.bean;

public class PtMenuDirectory {
    private Integer menuId;

    private String dirName;

    private Integer dirLevelNumber;

    private String parentId;

    private String isitem;

    private String locale;

    private Integer resUuid;

	public Integer getMenuId() {
		return menuId;
	}

	public void setMenuId(Integer menuId) {
		this.menuId = menuId;
	}

	public String getDirName() {
		return dirName;
	}

	public void setDirName(String dirName) {
		this.dirName = dirName;
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
		this.parentId = parentId;
	}

	public String getIsitem() {
		return isitem;
	}

	public void setIsitem(String isitem) {
		this.isitem = isitem;
	}

	public String getLocale() {
		return locale;
	}

	public void setLocale(String locale) {
		this.locale = locale;
	}

	public Integer getResUuid() {
		return resUuid;
	}

	public void setResUuid(Integer resUuid) {
		this.resUuid = resUuid;
	}

    
}