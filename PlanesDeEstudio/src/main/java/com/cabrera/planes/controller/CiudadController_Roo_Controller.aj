// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes.controller;

import com.cabrera.planes.Ciudad;
import com.cabrera.planes.Provincia;
import com.cabrera.planes.controller.CiudadController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect CiudadController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String CiudadController.create(@Valid Ciudad ciudad, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, ciudad);
            return "ciudads/create";
        }
        uiModel.asMap().clear();
        ciudad.persist();
        return "redirect:/ciudads/" + encodeUrlPathSegment(ciudad.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String CiudadController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Ciudad());
        return "ciudads/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String CiudadController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("ciudad", Ciudad.findCiudad(id));
        uiModel.addAttribute("itemId", id);
        return "ciudads/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String CiudadController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("ciudads", Ciudad.findCiudadEntries(firstResult, sizeNo));
            float nrOfPages = (float) Ciudad.countCiudads() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("ciudads", Ciudad.findAllCiudads());
        }
        return "ciudads/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String CiudadController.update(@Valid Ciudad ciudad, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, ciudad);
            return "ciudads/update";
        }
        uiModel.asMap().clear();
        ciudad.merge();
        return "redirect:/ciudads/" + encodeUrlPathSegment(ciudad.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String CiudadController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Ciudad.findCiudad(id));
        return "ciudads/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String CiudadController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Ciudad ciudad = Ciudad.findCiudad(id);
        ciudad.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/ciudads";
    }
    
    void CiudadController.populateEditForm(Model uiModel, Ciudad ciudad) {
        uiModel.addAttribute("ciudad", ciudad);
        uiModel.addAttribute("provincias", Provincia.findAllProvincias());
    }
    
    String CiudadController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
