// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes;

import com.cabrera.planes.Ciudad;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Ciudad_Roo_Json {
    
    public String Ciudad.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static Ciudad Ciudad.fromJsonToCiudad(String json) {
        return new JSONDeserializer<Ciudad>().use(null, Ciudad.class).deserialize(json);
    }
    
    public static String Ciudad.toJsonArray(Collection<Ciudad> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<Ciudad> Ciudad.fromJsonArrayToCiudads(String json) {
        return new JSONDeserializer<List<Ciudad>>().use(null, ArrayList.class).use("values", Ciudad.class).deserialize(json);
    }
    
}