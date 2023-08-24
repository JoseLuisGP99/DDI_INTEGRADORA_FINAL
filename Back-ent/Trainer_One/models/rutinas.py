from sqlalchemy import Table, Column
from sqlalchemy.sql.sqltypes import Integer, String, Float
from config.db import meta, engine
 # Definir la tabla "rutinas" con sus columnas
rutinas = Table("rutinas", meta,
                Column("Codigo", Integer, primary_key=True),
                Column("Nombre", String(100)),
                Column("Area", String(100)),
                Column("Dia", String(100)),
                Column("Repeticiones", Integer),
                Column("Peso", Float))
 # Crear la tabla en la base de datos utilizando el motor de conexión
meta.create_all(engine)