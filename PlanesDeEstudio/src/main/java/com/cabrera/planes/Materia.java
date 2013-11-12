package com.cabrera.planes;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class Materia {

    @Size(min = 1, max = 64)
    private String codigo;

    @Size(min = 1, max = 64)
    private String nombre;

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<PlanDeEstudio> planes = new HashSet<PlanDeEstudio>();

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Materia> correlativas = new HashSet<Materia>();
}
