








































package com.hsshop.security.vo;

import java.util.List;

public class RolesDetails {

	private long roleId;
	private String roleName;
	private String type;
	private List<PermissionsDetails> permissions;

	public long getRoleId() {
		return roleId;
	}

	public void setRoleId(long roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public List<PermissionsDetails> getPermissions() {
		return permissions;
	}

	public void setPermissions(List<PermissionsDetails> permissions) {
		this.permissions = permissions;
	}

}
