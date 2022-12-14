#import requests module
import requests

#Making a get request
response = requests.get('http://www.google.com')

#print response
print(response)

#print elapsed time
print(response.elapsed)
