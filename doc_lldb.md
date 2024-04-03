
# Uso de LLDB para Depuración en Linux

LLDB es un depurador de código abierto utilizado para depurar programas en sistemas operativos Unix, Windows y MacOS.
Este resumen proporciona una guía paso a paso sobre cómo usar LLDB en la terminal de Linux.

## Instalación de LLDB

En sistemas basados en Debian (como Ubuntu), puedes instalar LLDB con:

```bash
sudo apt-get update
sudo apt-get install lldb
```

## Pasos Básicos para Usar LLDB

### 1. Compilación

Compila tu programa con información de depuración incluida, usando la opción `-g`:

```bash
gcc -g tu_programa.c -o tu_programa
```

### 2. Iniciar LLDB

Para iniciar LLDB con tu programa, utiliza:

```bash
lldb ./tu_programa
```

### 3. Establecer Puntos de Interrupción

Para añadir un punto de interrupción en una función, usa:

```bash
breakpoint set --name nombre_de_la_funcion
```

Para añadir un punto de interrupción en una línea específica, usa:

```bash
breakpoint set --file tu_archivo.c --line numero_de_linea
```

### 4. Ejecutar el Programa

Para comenzar la ejecución de tu programa bajo LLDB, escribe:

```bash
run
```

### 5. Inspeccionar y Continuar

Una vez que el programa se detiene en un punto de interrupción,
puedes inspeccionar el estado del programa usando comandos como:

- **`bt`** o **`backtrace`**: para ver la pila de llamadas.
- **`print nombre_de_variable`**: para imprimir el valor de una variable.
- **`frame variable`**: para ver todas las variables en el marco actual.

Para continuar la ejecución hasta el próximo punto de interrupción, usa:

```bash
continue
```

### 6. Finalizar la Sesión

Para salir de LLDB, utiliza:

```bash
quit
```

## Consejos Adicionales

- Utiliza el comando `help` para obtener una lista de todos los comandos disponibles en LLDB.
- La opción `-o` permite pasar comandos a LLDB directamente desde la línea de comandos,
 lo que puede ser útil para automatizar tareas de depuración.

Usar LLDB te permite entender mejor el comportamiento de tu programa y encontrar errores más eficientemente.
