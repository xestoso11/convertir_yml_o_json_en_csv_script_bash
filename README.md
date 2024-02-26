# Como funciona el script

Selecionas la parte o partes del json que quieres y los mandas todos a un archivo
<br>

```bash
jq ".[].nombre" ejemplo.json > nombre.tmp
jq -r ".[].edad" ejemplo.json > edad.tmp
```
<br>
Defines los nombres de las columnas del csv y creas el csv
<br>

```bash
echo "nombre;edad" > persona.csv
```
<br>
Agregas al csv los datos, con los documentos que contienen los datos que sacaste del json en el primer paso.

```bash
paste -d ";" nombre.tmp edad.tmp >> persona.csv
```

# Enlaces de interes

## yq
https://github.com/mikefarah/yq/tree/master

## jq
https://www.baeldung.com/linux/jq-command-json
