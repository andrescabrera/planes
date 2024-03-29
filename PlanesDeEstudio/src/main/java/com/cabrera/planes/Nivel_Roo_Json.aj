// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes;

import com.cabrera.planes.Nivel;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Nivel_Roo_Json {
    
    public String Nivel.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static Nivel Nivel.fromJsonToNivel(String json) {
        return new JSONDeserializer<Nivel>().use(null, Nivel.class).deserialize(json);
    }
    
    public static String Nivel.toJsonArray(Collection<Nivel> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<Nivel> Nivel.fromJsonArrayToNivels(String json) {
        return new JSONDeserializer<List<Nivel>>().use(null, ArrayList.class).use("values", Nivel.class).deserialize(json);
    }
    
}
