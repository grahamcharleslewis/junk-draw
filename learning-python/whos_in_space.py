import requests

def get_api():
    request = requests.get('http://api.open-notify.org/astros.json')
    print(request.json())

get_api()