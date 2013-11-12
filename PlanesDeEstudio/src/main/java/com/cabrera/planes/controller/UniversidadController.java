package com.cabrera.planes.controller;
import com.cabrera.planes.Universidad;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/universidads")
@Controller
@RooWebScaffold(path = "universidads", formBackingObject = Universidad.class)
@RooWebJson(jsonObject = Universidad.class)
public class UniversidadController {
}
