package com.cabrera.planes;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class PlanDeEstudio {

    @NotNull
    @Size(min = 4, max = 64)
    private String nombre;

    @NotNull
    @Size(min = 1, max = 64)
    private String codigo;

    @ManyToOne
    private Carrera carrera;

    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "planes")
    private Set<Materia> materias = new HashSet<Materia>();

    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "planes")
    private Set<Estudiante> estudiantes = new HashSet<Estudiante>();
}
