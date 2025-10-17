Feature: Oracle Database query

  Background:
    * def DatabaseUtils = Java.type('utils.DatabaseUtils')
    * def dbUrl = 'jdbc:oracle:thin:@localhost:1521/XEPDB1'
    * def user = 'dummy'
    * def password = 'dummy'

  Scenario: Consultar tablas desde Oracle
    * eval DatabaseUtils.connect(dbUrl, user, password)
    * def results = DatabaseUtils.query('SELECT table_name FROM user_tables')
    * print results
    * eval DatabaseUtils.close()
