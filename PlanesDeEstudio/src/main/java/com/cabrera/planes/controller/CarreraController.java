package com.cabrera.planes.controller;
import com.cabrera.planes.Carrera;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/carreras")
@Controller
@RooWebScaffold(path = "carreras", formBackingObject = Carrera.class)
@RooWebJson(jsonObject = Carrera.class)
public class CarreraController {
}
