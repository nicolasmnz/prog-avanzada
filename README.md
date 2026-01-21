# prog-avanzada


## Semantic Line Breaks
Para ayudarse de los beneficios de Git, debemos ocupar esta guía de estilo.

En lugar de escribir párrafos largos en una sola línea de código, se escribe una frase por línea.

### Beneficios
1. **Evita Conflictos de Fusión:** Git trabaja línea por línea. Si dos personas editan el mismo párrafo pero en distintas oraciones, Git podrá unir los cambios automáticamente.
   
2. **Revisiones más claras:** En un Pull Request, veremos exactamente qué oración cambió, en lugar de ver un párrafo entero resaltado en rojo.
   
3. **LaTeX lo permite:** Recuerda que LaTeX ignora los saltos de línea simples. Para crear un nuevo párrafo, simplemente deja una línea en blanco (doble salto).

### Nota
**Cuándo romper la línea:** 
El punto seguido es el mejor lugar para dar un `Enter`, pero si una frase es muy larga, también puedes romperse en una coma."

---

## Conventional Commits
### Estructura de los mensajes
Se debe seguir el siguiente formato:

```bash
<tipo>[ámbito opcional]: <descripción corta>

[cuerpo del mensaje opcional]

[nota(s) al pie opcional(es)]
```
### Tipos de commits
| **Tipo** 	| **Uso**                                                                                 	|
|----------	|-----------------------------------------------------------------------------------------	|
| feat     	| Añadir una nueva funcionalidad o sección (ej. nuevo capitulo)                           	|
| fix      	| Correción de un error (ej. un error en una fórmula o una errata).                       	|
| docs     	| Cambios exclusivos en la documentación (ej. el README o comentarios).                   	|
| style    	| Cambios de formato que no afectan el significado (espacios, indentación).               	|
| refactor 	| Cambio en el código que ni corrige un error ni añade una función.                       	|
| test     	| Añadir o corregir pruebas (ej. verificar que el LaTeX compile).                         	|
| chore    	| Tareas de mantenimiento (actualizar .gitignore, librerías o archivos de configuración). 	|
| build    	| Cambios que afectan el sistema de compilación o dependencias (ej. Makefile).            	|

### Normas
1. Imperativo: La descripción debe escribirse en presente imperativo.
   
   > :white_check_mark: feat: add integration section  

   > :no_entry: feat: added integration section 

2. Minúsculas: El tipo y la descripción se escriben en minúsculas.
   
3. Sin punto final: La descripción corta (la primera línea) no debe terminar con punto.
   
4. Separación: Al escribir un cuerpo de mensaje, debe haber una línea en blanco entre la descripción corta y el cuerpo.
   
5. Ámbito: Usado para especificar a qué parte del proyecto afecta.

### BREAKING CHANGES
Si un cambio rompe la compatibilidad (por ejemplo, cambiar toda la estructura de carpetas o renombrar comandos básicos de LaTeX), se debe:

1. Marcar el tipo con un signo de exclamación
   > refactor!: cambiar estructura de archivos
2. Empezar el pie de pagina con el texto
   > BREAKING CHANGE: \<descripcion>


### Ejemplo:
```
feat(latex): implementar paquete de listado de código

Se ha agregado el paquete 'listings' para mejorar la visualización 
de los ejemplos en C++. Se configuraron los colores básicos.

BREAKING CHANGE: ahora es necesario tener instalado el paquete 'pygments' en el sistema.
```


\
**Note que:** 

Línea 1: Título (Tipo + descripción).

Línea 2: Dejar en blanco (obligatorio).

Líneas siguientes: Cuerpo del mensaje.

Penúltima linea: Dejar en blanco (obligatorio).

Última línea: Notas al pie o BREAKING CHANGES.