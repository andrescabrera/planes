package com.cabrera.planes.controller;
import com.cabrera.planes.Pais;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/paises")
@Controller
@RooWebScaffold(path = "paises", formBackingObject = Pais.class)
@RooWebJson(jsonObject = Pais.class)
public class PaisController {
}
