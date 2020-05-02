#from pexpect import pxssh
import sys
import requests
import json

#s = pxssh.pxssh()
#import urllib3

mac_address = input("Please enter mac address:")

#mac_address = '00:00:0A';

#s.prompt()
#s.setecho(True)

max_len = len(mac_address)

#mac_address = sys.argv[1]
#max_len = len(mac_address)

if (max_len < 8):
        print ('Please enter atleast 8 characters with xx-xx-xx format')
        sys.exit(0)

mac_address = mac_address[0:8]

#url = 'http://192.168.206.131/test_python_japan_docker/mac_address_lookup_api.py?mac_address=' + mac_address + '&token=123456'

url = 'http://localhost/mac_address_lookup_api.py?mac_address=' + mac_address + '&token=123456'

#url = 'http://localhost/index.html'
#url = 'http://localhost/python_test_japan/mac_address_lookup_api.py'
#response = requests.post(url, data=payload,headers={"Content-Type": "application/json"})

response = requests.get(url)

#http = urllib3.PoolManager()
#response = http.request('GET', url)

if response.status_code == 200:
        print(response.text)
else:
        print('Invalid response..')
        
        