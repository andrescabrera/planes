// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes.domain;

import com.cabrera.planes.domain.Role;
import com.cabrera.planes.domain.RoleDataOnDemand;
import com.cabrera.planes.domain.User;
import com.cabrera.planes.domain.UserDataOnDemand;
import com.cabrera.planes.domain.UserRole;
import com.cabrera.planes.domain.UserRoleDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect UserRoleDataOnDemand_Roo_DataOnDemand {
    
    declare @type: UserRoleDataOnDemand: @Component;
    
    private Random UserRoleDataOnDemand.rnd = new SecureRandom();
    
    private List<UserRole> UserRoleDataOnDemand.data;
    
    @Autowired
    RoleDataOnDemand UserRoleDataOnDemand.roleDataOnDemand;
    
    @Autowired
    UserDataOnDemand UserRoleDataOnDemand.userDataOnDemand;
    
    public UserRole UserRoleDataOnDemand.getNewTransientUserRole(int index) {
        UserRole obj = new UserRole();
        setRoleEntry(obj, index);
        setUserEntry(obj, index);
        return obj;
    }
    
    public void UserRoleDataOnDemand.setRoleEntry(UserRole obj, int index) {
        Role roleEntry = roleDataOnDemand.getRandomRole();
        obj.setRoleEntry(roleEntry);
    }
    
    public void UserRoleDataOnDemand.setUserEntry(UserRole obj, int index) {
        User userEntry = userDataOnDemand.getRandomUser();
        obj.setUserEntry(userEntry);
    }
    
    public UserRole UserRoleDataOnDemand.getSpecificUserRole(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        UserRole obj = data.get(index);
        Long id = obj.getId();
        return UserRole.findUserRole(id);
    }
    
    public UserRole UserRoleDataOnDemand.getRandomUserRole() {
        init();
        UserRole obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return UserRole.findUserRole(id);
    }
    
    public boolean UserRoleDataOnDemand.modifyUserRole(UserRole obj) {
        return false;
    }
    
    public void UserRoleDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = UserRole.findUserRoleEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'UserRole' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<UserRole>();
        for (int i = 0; i < 10; i++) {
            UserRole obj = getNewTransientUserRole(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
