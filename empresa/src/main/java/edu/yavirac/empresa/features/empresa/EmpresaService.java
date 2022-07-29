package edu.yavirac.empresa.features.empresa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmpresaService {
    @Autowired
    EmpresaRepository empresaRepository;

    public Empresa save(Empresa empresa){

        return empresaRepository.save(empresa);
    }

    public Empresa findById(long id){
        return empresaRepository.findById(id).orElse(new Empresa());
    }

    public Empresa update(Empresa empresa){
        return empresaRepository.save(empresa);
    }

    public void deleteById(long id){
        empresaRepository.deleteById(id);
    }

    public List<Empresa> findAll(){
        return empresaRepository.findAll();
    }

    
}
