package com.cabrera.planes.controller;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.cabrera.planes.Ciudad;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/ciudads")
@Controller
@RooWebScaffold(path = "ciudads", formBackingObject = Ciudad.class)
@RooWebJson(jsonObject = Ciudad.class)
public class CiudadController {
}
