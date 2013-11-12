package com.cabrera.planes;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class Carrera {

    @NotNull
    @Size(min = 3, max = 64)
    private String nombre;

    @Size(min = 1, max = 1024)
    private String codigo;

    @ManyToOne
    private Nivel nivel;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "carrera")
    private Set<PlanDeEstudio> planes = new HashSet<PlanDeEstudio>();
}
