package com.cabrera.planes.controller;
import com.cabrera.planes.Materia;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/materias")
@Controller
@RooWebScaffold(path = "materias", formBackingObject = Materia.class)
@RooWebJson(jsonObject = Materia.class)
public class MateriaController {
}
