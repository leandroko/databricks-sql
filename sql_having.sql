-- Databricks notebook source
SELECT *
FROM silver_olist.vendedor

-- COMMAND ----------

SELECT descUF,
       COUNT(idVendedor)
FROM silver_olist.vendedor

GROUP BY descUF
HAVING COUNT(idVendedor) >= 100
