package com.cabrera.planes.controller;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.cabrera.planes.Estudiante;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/estudiantes")
@Controller
@RooWebScaffold(path = "estudiantes", formBackingObject = Estudiante.class)
@RooWebJson(jsonObject = Estudiante.class)
public class EstudianteController {
}
