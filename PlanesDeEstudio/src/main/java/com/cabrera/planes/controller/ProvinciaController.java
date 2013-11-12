package com.cabrera.planes.controller;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.cabrera.planes.Provincia;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/provincias")
@Controller
@RooWebScaffold(path = "provincias", formBackingObject = Provincia.class)
@RooWebJson(jsonObject = Provincia.class)
public class ProvinciaController {
}
