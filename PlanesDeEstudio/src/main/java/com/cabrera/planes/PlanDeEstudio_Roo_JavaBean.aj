// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes;

import com.cabrera.planes.Carrera;
import com.cabrera.planes.Estudiante;
import com.cabrera.planes.Materia;
import com.cabrera.planes.PlanDeEstudio;
import java.util.Set;

privileged aspect PlanDeEstudio_Roo_JavaBean {
    
    public String PlanDeEstudio.getNombre() {
        return this.nombre;
    }
    
    public void PlanDeEstudio.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String PlanDeEstudio.getCodigo() {
        return this.codigo;
    }
    
    public void PlanDeEstudio.setCodigo(String codigo) {
        this.codigo = codigo;
    }
    
    public Carrera PlanDeEstudio.getCarrera() {
        return this.carrera;
    }
    
    public void PlanDeEstudio.setCarrera(Carrera carrera) {
        this.carrera = carrera;
    }
    
    public Set<Materia> PlanDeEstudio.getMaterias() {
        return this.materias;
    }
    
    public void PlanDeEstudio.setMaterias(Set<Materia> materias) {
        this.materias = materias;
    }
    
    public Set<Estudiante> PlanDeEstudio.getEstudiantes() {
        return this.estudiantes;
    }
    
    public void PlanDeEstudio.setEstudiantes(Set<Estudiante> estudiantes) {
        this.estudiantes = estudiantes;
    }
    
}
