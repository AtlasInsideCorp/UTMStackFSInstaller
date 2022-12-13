#!/bin/bash
echo "Init database with user $POSTGRES_USER and  create database $POSTGRES_DB"
psql --username $POSTGRES_USER CREATE DATABASE $POSTGRES_DB;
