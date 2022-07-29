package edu.yavirac.empresa.features.empresa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.HttpStatus;


@RestController
@RequestMapping("/api/empresa")
@CrossOrigin({"*"})
public class EmpresaController {

    @Autowired
    EmpresaService empresaService;

    @PostMapping("/save")
    public Empresa save(@RequestBody Empresa empresa){
        return empresaService.save(empresa);
    }

    @GetMapping("/{id}")
    public Empresa findById(@PathVariable long id){
        return empresaService.findById(id);
    }

    @PutMapping("/update")
    public Empresa update(@RequestBody Empresa empresa)
    {
        return empresaService.save(empresa);
    }

    @DeleteMapping("/deleteById/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable long id){
        empresaService.deleteById(id);
    }

    @GetMapping("/findAll")
    public List<Empresa> findAll(){
        return empresaService.findAll();
    }   
}
