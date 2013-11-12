package com.cabrera.planes;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.ManyToOne;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class Universidad {

    @NotNull
    @Size(min = 8, max = 64)
    private String nombre;

    @Size(min = 4, max = 1024)
    private String codigo;

    @ManyToOne
    private Ciudad ciudad;

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Carrera> carreras = new HashSet<Carrera>();

    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "universidades")
    private Set<Estudiante> estudiantes = new HashSet<Estudiante>();
}
