// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes.controller;

import com.cabrera.planes.Estudiante;
import com.cabrera.planes.PlanDeEstudio;
import com.cabrera.planes.Universidad;
import com.cabrera.planes.controller.EstudianteController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect EstudianteController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String EstudianteController.create(@Valid Estudiante estudiante, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, estudiante);
            return "estudiantes/create";
        }
        uiModel.asMap().clear();
        estudiante.persist();
        return "redirect:/estudiantes/" + encodeUrlPathSegment(estudiante.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String EstudianteController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Estudiante());
        return "estudiantes/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String EstudianteController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("estudiante", Estudiante.findEstudiante(id));
        uiModel.addAttribute("itemId", id);
        return "estudiantes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String EstudianteController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("estudiantes", Estudiante.findEstudianteEntries(firstResult, sizeNo));
            float nrOfPages = (float) Estudiante.countEstudiantes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("estudiantes", Estudiante.findAllEstudiantes());
        }
        addDateTimeFormatPatterns(uiModel);
        return "estudiantes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String EstudianteController.update(@Valid Estudiante estudiante, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, estudiante);
            return "estudiantes/update";
        }
        uiModel.asMap().clear();
        estudiante.merge();
        return "redirect:/estudiantes/" + encodeUrlPathSegment(estudiante.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String EstudianteController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Estudiante.findEstudiante(id));
        return "estudiantes/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String EstudianteController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Estudiante estudiante = Estudiante.findEstudiante(id);
        estudiante.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/estudiantes";
    }
    
    void EstudianteController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("estudiante_fechanacimiento_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void EstudianteController.populateEditForm(Model uiModel, Estudiante estudiante) {
        uiModel.addAttribute("estudiante", estudiante);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("plandeestudios", PlanDeEstudio.findAllPlanDeEstudios());
        uiModel.addAttribute("universidads", Universidad.findAllUniversidads());
    }
    
    String EstudianteController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
