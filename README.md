# MF22036
Repositorio para actividad evaludad 5 de DIseño y Estructuras de Computadoras

### Código #1: Resta

#### Descripción:
Programa en ensamblador que resta tres números enteros predefinidos y muestra el resultado en la consola.

#### Pasos para ejecutar:
1. Guardamos nuestro código en un archivo con la extensión `.asm`, por ejemplo, `resta.asm`.
2. Ensamblamos el código usando NASM: `nasm -f elf32 -o resta.o resta.asm`.
3. Enlazamos el código ensamblado usando ld: `ld -m elf_i386 -o resta resta.o`.
4. Ejecutamos el programa: `./resta`.

### Código #2: Multiplicación

#### Descripción:
Programa en ensamblador que multiplica dos números enteros y muestra el resultado en la consola.

#### Pasos para ejecutar:
1. Guardamos nuestro código en un archivo con la extensión `.asm`, por ejemplo, `multiplicacion.asm`.
2. Ensamblamos el código usando NASM: `nasm -f elf32 -o multiplicacion.o multiplicacion.asm`.
3. Enlazamos el código ensamblado usando ld: `ld -m elf_i386 -o multiplicacion multiplicacion.o`.
4. Ejecutamos el programa: `./multiplicacion`.

### Código #3: División

#### Descripción:
Programa en ensamblador que divide dos números enteros y muestra el resultado en la consola.

#### Pasos para ejecutar:
1. Guardamos nuestro código en un archivo con la extensión `.asm`, por ejemplo, `division.asm`.
2. Ensamblamos el código usando NASM: `nasm -f elf32 -o division.o division.asm`.
3. Enlazamos el código ensamblado usando ld: `ld -m elf_i386 -o division division.o`.
4. Ejecutamos el programa: `./division`.
