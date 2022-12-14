import random
import string
'''
    Generate random String of length 5
'''
N = 5

res = ''.join(random.choices(string.ascii_letters,k=N))

#print result
print("the generated random string: "+str(res))

