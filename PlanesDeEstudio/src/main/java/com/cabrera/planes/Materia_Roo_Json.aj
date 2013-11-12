// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes;

import com.cabrera.planes.Materia;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Materia_Roo_Json {
    
    public String Materia.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static Materia Materia.fromJsonToMateria(String json) {
        return new JSONDeserializer<Materia>().use(null, Materia.class).deserialize(json);
    }
    
    public static String Materia.toJsonArray(Collection<Materia> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<Materia> Materia.fromJsonArrayToMaterias(String json) {
        return new JSONDeserializer<List<Materia>>().use(null, ArrayList.class).use("values", Materia.class).deserialize(json);
    }
    
}