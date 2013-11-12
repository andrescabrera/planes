package com.cabrera.planes.controller;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.cabrera.planes.Nivel;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/nivels")
@Controller
@RooWebScaffold(path = "nivels", formBackingObject = Nivel.class)
@RooWebJson(jsonObject = Nivel.class)
public class NivelController {
}
