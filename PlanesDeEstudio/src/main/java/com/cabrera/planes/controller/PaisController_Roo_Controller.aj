// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.cabrera.planes.controller;

import com.cabrera.planes.Pais;
import com.cabrera.planes.controller.PaisController;
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

privileged aspect PaisController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PaisController.create(@Valid Pais pais, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, pais);
            return "paises/create";
        }
        uiModel.asMap().clear();
        pais.persist();
        return "redirect:/paises/" + encodeUrlPathSegment(pais.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PaisController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Pais());
        return "paises/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String PaisController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("pais", Pais.findPais(id));
        uiModel.addAttribute("itemId", id);
        return "paises/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PaisController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("paises", Pais.findPaisEntries(firstResult, sizeNo));
            float nrOfPages = (float) Pais.countPaises() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("paises", Pais.findAllPaises());
        }
        return "paises/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PaisController.update(@Valid Pais pais, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, pais);
            return "paises/update";
        }
        uiModel.asMap().clear();
        pais.merge();
        return "redirect:/paises/" + encodeUrlPathSegment(pais.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String PaisController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Pais.findPais(id));
        return "paises/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String PaisController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Pais pais = Pais.findPais(id);
        pais.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/paises";
    }
    
    void PaisController.populateEditForm(Model uiModel, Pais pais) {
        uiModel.addAttribute("pais", pais);
    }
    
    String PaisController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
