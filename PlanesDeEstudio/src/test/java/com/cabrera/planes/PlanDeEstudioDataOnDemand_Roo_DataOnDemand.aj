// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes;

import com.cabrera.planes.CarreraDataOnDemand;
import com.cabrera.planes.PlanDeEstudio;
import com.cabrera.planes.PlanDeEstudioDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect PlanDeEstudioDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PlanDeEstudioDataOnDemand: @Component;
    
    private Random PlanDeEstudioDataOnDemand.rnd = new SecureRandom();
    
    private List<PlanDeEstudio> PlanDeEstudioDataOnDemand.data;
    
    @Autowired
    CarreraDataOnDemand PlanDeEstudioDataOnDemand.carreraDataOnDemand;
    
    public PlanDeEstudio PlanDeEstudioDataOnDemand.getNewTransientPlanDeEstudio(int index) {
        PlanDeEstudio obj = new PlanDeEstudio();
        setCodigo(obj, index);
        setNombre(obj, index);
        return obj;
    }
    
    public void PlanDeEstudioDataOnDemand.setCodigo(PlanDeEstudio obj, int index) {
        String codigo = "codigo_" + index;
        if (codigo.length() > 64) {
            codigo = codigo.substring(0, 64);
        }
        obj.setCodigo(codigo);
    }
    
    public void PlanDeEstudioDataOnDemand.setNombre(PlanDeEstudio obj, int index) {
        String nombre = "nombre_" + index;
        if (nombre.length() > 64) {
            nombre = nombre.substring(0, 64);
        }
        obj.setNombre(nombre);
    }
    
    public PlanDeEstudio PlanDeEstudioDataOnDemand.getSpecificPlanDeEstudio(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        PlanDeEstudio obj = data.get(index);
        Long id = obj.getId();
        return PlanDeEstudio.findPlanDeEstudio(id);
    }
    
    public PlanDeEstudio PlanDeEstudioDataOnDemand.getRandomPlanDeEstudio() {
        init();
        PlanDeEstudio obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return PlanDeEstudio.findPlanDeEstudio(id);
    }
    
    public boolean PlanDeEstudioDataOnDemand.modifyPlanDeEstudio(PlanDeEstudio obj) {
        return false;
    }
    
    public void PlanDeEstudioDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = PlanDeEstudio.findPlanDeEstudioEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'PlanDeEstudio' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<PlanDeEstudio>();
        for (int i = 0; i < 10; i++) {
            PlanDeEstudio obj = getNewTransientPlanDeEstudio(i);
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