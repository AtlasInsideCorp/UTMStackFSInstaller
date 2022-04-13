#!/bin/bash
echo "Init database with user $POSTGRES_USER and  create database $POSTGRES_DB"
psql -U $POSTGRES_USER CREATE DATABASE $POSTGRES_DB;
