from pydantic import BaseModel
 # Definición de la clase Alumno que hereda de BaseModel
class Rutina(BaseModel):
    Codigo: int # Campo para almacenar la matrícula del alumno
    Nombre: str 
    Area: str 
    Dia: str
    Repeticiones: int  
    Peso: float  