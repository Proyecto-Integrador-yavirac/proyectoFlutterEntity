package edu.yavirac.empresa.features.empresa;

import java.sql.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("empresas")
public class Empresa {
    
    @Id
    private int id;
    private String ruc;
    private String nombre;
    private boolean estado;
    private String telefono;
    private String descripcion;
    private String email;
    private String direccion;
    private int numeroEmpleados;
    private Date fechaCreacion;
}
