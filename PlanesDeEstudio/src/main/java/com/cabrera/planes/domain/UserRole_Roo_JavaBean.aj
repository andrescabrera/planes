// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes.domain;

import com.cabrera.planes.domain.Role;
import com.cabrera.planes.domain.User;
import com.cabrera.planes.domain.UserRole;

privileged aspect UserRole_Roo_JavaBean {
    
    public User UserRole.getUserEntry() {
        return this.userEntry;
    }
    
    public void UserRole.setUserEntry(User userEntry) {
        this.userEntry = userEntry;
    }
    
    public Role UserRole.getRoleEntry() {
        return this.roleEntry;
    }
    
    public void UserRole.setRoleEntry(Role roleEntry) {
        this.roleEntry = roleEntry;
    }
    
}
