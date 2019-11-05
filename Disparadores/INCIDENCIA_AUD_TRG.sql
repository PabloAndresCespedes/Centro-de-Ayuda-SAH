create or replace trigger INCIDENCIA_AUD_TRG
  after insert or update or delete
  on CA_INCIDENCIA 
  REFERENCING NEW AS NEW OLD AS OLD
  for each row
  /*
    CREADO POR: PABLO_CESPEDES
    FECHA: 11/03/2019
    DISPARADOR PARA INSERTAR REGISTRO DE AGREGADO, ACTUALIZADO O ELIMINADO DE LA TABLA DE CA_INCIDENCIA A LA TABLA CA_INCIDENCIA_JN
  */
declare
  V_OPERACION VARCHAR2(3);
  
begin
  IF INSERTING OR UPDATING THEN
    IF INSERTING THEN
       V_OPERACION := 'INS';
    ELSE
       V_OPERACION := 'UPD';
    END IF;
  
    INSERT INTO CA_INCIDENCIA_JN 
      VALUES(:new.id_incidencia
             ,:new.informador_id
             ,:new.responsable_id
             ,:new.cliente_id
             ,:new.can_comu_id
             ,:new.categoria_id
             ,:new.tipo_inci_id
             ,:new.prioridad_id
             ,:new.proyecto_id
             ,:new.estado_id
             ,:new.complejidad_id
             ,:new.satisfaccion_id
             ,:new.titulo
             ,:new.descripcion
             ,:new.fecha
             ,:new.resolucion
             ,V_OPERACION
             ,SYSDATE
             ,:new.user_web  
             ,:new.clave_contador
             ,:new.aplicacion_id
             ,:new.fecha_cierre
             ,:new.aprobado
             ,:new.fecha_aprobacion
             ,:new.aprobado_por
      );
    ELSIF DELETING THEN
      V_OPERACION := 'DEL'; 
      INSERT INTO CA_INCIDENCIA_JN 
        VALUES(:old.id_incidencia
               ,:old.informador_id
               ,:old.responsable_id
               ,:old.cliente_id
               ,:old.can_comu_id
               ,:old.categoria_id
               ,:old.tipo_inci_id
               ,:old.prioridad_id
               ,:old.proyecto_id
               ,:old.estado_id
               ,:old.complejidad_id
               ,:old.satisfaccion_id
               ,:old.titulo
               ,:old.descripcion
               ,:old.fecha
               ,:old.resolucion
               ,V_OPERACION
               ,SYSDATE
               ,:old.user_web  
               ,:old.clave_contador
               ,:old.aplicacion_id
               ,:old.fecha_cierre
               ,:old.aprobado
               ,:old.fecha_aprobacion
               ,:old.aprobado_por
       );
    END IF;
end;
