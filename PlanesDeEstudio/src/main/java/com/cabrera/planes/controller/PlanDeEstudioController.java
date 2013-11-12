package com.cabrera.planes.controller;
import com.cabrera.planes.PlanDeEstudio;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/plandeestudios")
@Controller
@RooWebScaffold(path = "plandeestudios", formBackingObject = PlanDeEstudio.class)
@RooWebJson(jsonObject = PlanDeEstudio.class)
public class PlanDeEstudioController {
}
