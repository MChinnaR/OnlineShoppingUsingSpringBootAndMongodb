package com.hsshop.security.vo;

public class PermissionsDetails {

	private String permissionName;
	private long permissionId;
	private String assignType;

	public String getPermissionName() {
		return permissionName;
	}

	public void setPermissionName(String permissionName) {
		this.permissionName = permissionName;
	}

	public long getPermissionId() {
		return permissionId;
	}

	public void setPermissionId(long permissionId) {
		this.permissionId = permissionId;
	}

	public String getAssignType() {
		return assignType;
	}

	public void setAssignType(String assignType) {
		this.assignType = assignType;
	}

}
