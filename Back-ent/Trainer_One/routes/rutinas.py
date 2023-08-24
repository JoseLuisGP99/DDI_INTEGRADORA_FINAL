
# Importar la clase APIRouter del módulo fastapi
from fastapi import APIRouter
from config.db import conn
from models.rutinas import rutinas
from schemas.rutinas import Rutina

 # Crear una instancia de APIRouter
router = APIRouter()


@router.get("/getAll")
def ObtenerRutina():
    # Obtener todos de las rutinas de la base de datos
    students_list_tuples = conn.execute(rutinas.select()).fetchall()
    students_list_dicts = []
    for student_tuple in students_list_tuples:
        # Crear un diccionario con los datos de RUTINA
        students_dict = {
            "Codigo": student_tuple[0],
            "Nombre": student_tuple[1],
            "Area": student_tuple[2],
            "Dia": student_tuple[3],
            "Repeticiones": student_tuple[4],
            "Peso": student_tuple[5]
        }
        students_list_dicts.append(students_dict)
    return students_list_dicts


@router.post("/insert")
def insertRutina(rutina:Rutina):
    print(rutina)
    conn.execute(rutinas.insert().values(dict(rutina)))
    conn.commit()
    res={
        "status":"rutina insertado con exito"
    }
    return res 
        
        
@router.get("/getOne/{Codigo}")
def ObtenerRutina(Codigo:int):
    student_tuple =conn.execute (rutinas.select().where(rutinas.c.Codigo==Codigo)).first()
    if student_tuple != None:
        student_dict ={
            "Codigo": student_tuple[0],
            "Nombre": student_tuple[1],
            "Area": student_tuple[2],
            "Dia": student_tuple[3],
            "Repeticiones": student_tuple[4],
            "Peso": student_tuple[5]
        }
        return  student_dict
    else:
        res ={
            "status": "rutina no existente"
        }
    return res


@router.put("/Update/{Codigo}")
def ActualizarRutina(rutina: Rutina, Codigo):
    res=ObtenerRutina(Codigo)
    print(res)
    if res.get("status")=="No existe rutina":
        resp={
            "status":"No existe rutina"
        }
    else:
        result = conn.execute(rutinas.update().values(dict(rutina)).where(rutinas.c.Codigo==Codigo))
        conn.commit()
        resp=result.last_updated_params()
    return resp


@router.delete("/delete/{Codigo}")
def EliminarRutina(rutina: Rutina, Codigo):
    res=ObtenerRutina(Codigo)
    print(res)
    if res.get("status")=="No existe el rutina":
        resp={
            "status":"No existe el rutina"
        }
    else:
        result = conn.execute(rutinas.delete().where(rutinas.c.Codigo==Codigo))
        conn.commit()
        resp=result
    return resp