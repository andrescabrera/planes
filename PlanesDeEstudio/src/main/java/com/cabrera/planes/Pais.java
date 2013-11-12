package com.cabrera.planes;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class Pais {

    @NotNull
    @Size(min = 4, max = 64)
    private String nombre;

    @NotNull
    @Size(min = 2, max = 1024)
    private String codigo;
}
