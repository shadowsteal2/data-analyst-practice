# Ejercicio 01 — Ventas de una tienda de música digital (Chinook)

<!-- Botones de navegación de idioma -->

*Read this in other languages:* [*English*](README.md)*,* [*Español*](README-es.md)*.*



**Herramientas:** SQL · Python · Power BI

## Objetivo de negocio

Eres analista de la tienda y dirección quiere decidir dónde enfocar el presupuesto de marketing del próximo trimestre. Preguntas a responder:

* ¿Qué géneros generan más ingresos?
* ¿Qué artistas son el top 10 por ingresos?
* ¿Qué países son los mercados más fuertes?
* ¿Cómo evoluciona la facturación mes a mes?

## Datos

* Fuente: [Chinook Database](https://github.com/lerocha/chinook-database) — base de datos de muestra de una tienda de música digital (artistas, álbumes, pistas, facturas, clientes).
* Descarga: [última release](https://github.com/lerocha/chinook-database/releases) → asset `Chinook\\\\\\\_Sqlite.sqlite`.
* Para explorarla sin código: [DB Browser for SQLite](https://sqlitebrowser.org).

## Tareas

### SQL (`sql/consultas.sql`)

Una query comentada por pregunta:

1. Ingresos totales por género, orden desc.
2. Top 10 artistas por ingresos.
3. Ingresos por país, orden desc.
4. Ingresos agrupados por mes.
5. Ticket medio (avg) por país.

### Python (`python/analisis.py`)

* Reproducir las queries 1 y 4 con `pandas` (`groupby`/`agg`) y comprobar que cuadran con SQL.
* Calcular el % de crecimiento mes a mes de los ingresos (`pct\\\\\\\_change()`).
* Un gráfico (matplotlib/seaborn): evolución mensual de ingresos.
* Exportar a CSV/Excel una tabla limpia (mes, país, género, ingresos) para Power BI.

### Power BI (`powerbi/dashboard\\\\\\\_ventas.pbix`)

* Origen de datos: el CSV/Excel exportado desde Python.
* Visuales mínimos: 2 KPI cards (ingresos totales, ticket medio), barra top géneros, barra top países, línea evolución mensual, slicer por año.
* Exportar a PDF + captura de pantalla.

## Checklist

* \[ ] 5 queries SQL comentadas, cada una resolviendo una pregunta de negocio.
* \[ ] Script Python que valida 2 de esas queries con pandas + 1 análisis exclusivo de Python + 1 gráfico.
* \[ ] CSV/Excel exportado listo para Power BI.
* \[ ] Dashboard con ≥4 visuales + 2 KPIs, `.pbix` + PDF/imagen.
* \[ ] Todo subido a `data-analyst-practice` con `add -A` → `commit` → `push`.

