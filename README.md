# Sistema Bancario - Proyecto COBOL

Este es un proyecto de un **Sistema Bancario Core** desarrollado en **COBOL** utilizando **ESQL (Embedded SQL)** para interactuar con una base de datos relacional (MySQL).

## 📋 Descripción General
El sistema está diseñado para gestionar de forma modular las operaciones principales de una entidad bancaria, incluyendo la administración de clientes, cuentas corrientes, tarjetas, hipotecas y créditos.

## 🛠️ Tecnologías y Herramientas
- **Lenguaje:** COBOL (Compatible con GnuCOBOL / OpenCOBOL).
- **Base de Datos:** MySQL (Versión 8.0+).
- **Integración:** ESQL (Embedded SQL) a través del precompilador correspondiente.

## 📁 Estructura del Proyecto

La estructura de directorios está organizada de forma modular para facilitar el desarrollo y mantenimiento:

```text
PROYECTO-COBOL/
├── bdd/        # Scripts de base de datos
│   └── banco.sql       # Script de creación de BD, tablas y datos iniciales.
├── bin/        # Archivos ejecutables compilados (.exe / binarios).
├── copy/       # Archivos Copybooks (.cpy) con las estructuras de datos.
│   ├── CLIENTES.cpy
│   ├── CTACTES.cpy
│   ├── HIPOTECAS.cpy
│   └── TARJETAS.cpy
├── scripts/    # Scripts (batch/shell) de compilación y ejecución.
└── src/        # Código fuente de los programas COBOL (.cbl).
    ├── CL/     # Módulo de Clientes (Alta, Baja, Modificación, Consulta).
    ├── CR/     # Módulo de Créditos.
    ├── CT/     # Módulo de Cuentas Corrientes.
    ├── HP/     # Módulo de Hipotecas.
    └── TJ/     # Módulo de Tarjetas.
```

## 🧩 Módulos Principales

1. **Módulo de Clientes (`src/CL`)**
   - **`CL0000.cbl`**: Programa principal (Menú de enrutamiento) para las operaciones sobre la tabla de clientes.
   - Operaciones previstas: Alta (`CL0001`), Baja (`CL0002`), Modificación (`CL0003`) y Consulta (`CL0004`).

2. **Módulo de Cuentas Corrientes (`src/CT`)**
   - Gestión de cuentas y registro de movimientos monetarios.

3. **Módulo de Hipotecas (`src/HP`)**
   - Administración de préstamos hipotecarios, tasas de interés y saldos.

4. **Módulo de Tarjetas (`src/TJ`)**
   - Control de tarjetas de crédito, límites, acumulados y liquidaciones.

5. **Módulo de Créditos (`src/CR`)**
   - Gestión y otorgamiento de créditos personales/comerciales.

## 💾 Base de Datos

El script de inicialización se encuentra en `bdd/banco.sql`. Este script genera la base de datos `banco` e incluye las siguientes tablas con datos de prueba:
- `clientes`
- `cod_movimientos`
- `ctactes`
- `hipotecas`
- `indicadores`
- `tarjetas`

## 🚀 Instalación y Configuración

1. **Base de Datos:**
   - Asegúrate de tener instalado MySQL Server.
   - Ejecuta el script de base de datos:
     ```sql
     mysql -u tu_usuario -p < bdd/banco.sql
     ```
2. **Entorno COBOL:**
   - Requiere un entorno GnuCOBOL configurado junto con un precompilador ESQL para traducir las sentencias `EXEC SQL` a llamadas nativas que el compilador de COBOL pueda entender.

3. **Compilación:**
   - Los archivos de la carpeta `src/` deben precompilarse y luego compilarse utilizando `cobc`. Se recomienda configurar archivos batch o shell en el directorio `scripts/` para automatizar este proceso. Los binarios resultantes se ubicarán en `bin/`.

## 💻 Uso
Para iniciar el sistema de clientes, ejecuta el binario principal del módulo:
```bash
./bin/CL0000
```
Esto desplegará el menú principal de operaciones en la terminal.

---
*Desarrollado para la práctica y avance en sistemas de gestión bancaria con COBOL y SQL.*
