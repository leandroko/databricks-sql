-- Databricks notebook source
SELECT *
FROM silver_olist.pedido

WHERE descSituacao = 'delivered'
