package com.cabrera.planes.controller;
import com.cabrera.planes.EstadoMateria;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/estadomaterias")
@Controller
@RooWebScaffold(path = "estadomaterias", formBackingObject = EstadoMateria.class)
@RooWebJson(jsonObject = EstadoMateria.class)
public class EstadoMateriaController {
}
