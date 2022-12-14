-- Databricks notebook source
SELECT *
FROM silver_olist.pedido

WHERE descSituacao = 'delivered'

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos com situacao 'delivered'

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido

WHERE descSituacao = 'shipped'
AND YEAR(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos enviados de 2018

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND YEAR(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos enviados de 2018

-- COMMAND ----------

SELECT 1 + 10 * 2

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND YEAR(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos enviados de 2018

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND YEAR(dtPedido) = '2018'
AND DATEDIFF(dtEstimativaEntrega, dtAprovado) > 30

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos enviados de 2018 e a diferenca entre dtEstimativaEntrega e dtAprovado seja maior que 30 dias
