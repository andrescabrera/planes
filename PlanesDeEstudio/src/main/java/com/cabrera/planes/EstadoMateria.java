package com.cabrera.planes;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class EstadoMateria {

    @NotNull
    private String nombre;

    @NotNull
    @ManyToOne
    private Materia materia;

    /**
     * El estudiante que aprobo cursada o final de esta materia
     */
    @NotNull
    @ManyToOne
    private Estudiante estudiante;
}
