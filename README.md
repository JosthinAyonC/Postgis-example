# Proyecto de ejemplo para tratar con geolocaizaciones y postgreSQL

### Levantar la base de datos lista para usarse con la extensión de Postgis:

```bash
docker run --name some-postgis \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=Lokoloko21 \
  -p 5432:5432 \
  -d postgis/postgis:16-3.4
```

### Una vez corriendo se importa el plugin:
```sql
CREATE EXTENSION postgis; -- Para verificar que la extensión está instalada
```

### Finalmente revisamos que se haya instalado correctamente:
```sql
SELECT postgis_full_version();
```