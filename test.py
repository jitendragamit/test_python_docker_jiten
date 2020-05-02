#!/usr/bin/python3

print("Content-type:text/html\n\n")
#print("hello")

import mysql.connector
import json

import sys, os
import cgi
form = cgi.FieldStorage()
mac_address = form.getvalue('mac_address')
token = form.getvalue('token')

#mac_address = '00:00:0A'
#token = '123456'

if token != '123456':
    print('Invalid token value')
    sys.exit(0)

conn = mysql.connector.connect(host='localhost',
                              database='db_python_test',
                              user='root',
                              password='')

cursor = conn.cursor()

query = "SELECT vendor_name FROM tbl_mac_address_vendor where address_prefix like '" + mac_address + "%'"

cursor.execute(query)
rows = cursor.fetchone()

if cursor.rowcount > 0:
    vendor_name = rows[0]
    print(vendor_name)
else :
    print("Not found company for this mac address")

cursor.close()