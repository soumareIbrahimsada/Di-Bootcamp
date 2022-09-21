marque={
    'name': 'Zara', 
    'creation_date': 1975, 
    'creator_name': 'Amancio Ortega Gaona', 
    'type_of_clothes': ['men', 'women', 'children', 'home'],
    'international_competitors': ['Gap', 'H&M', 'Benetton'],
    'number_stores': 7000 ,
    'major_color':{ 
        'France': 'blue', 
        'Spain': 'red,',
        'US': 'pink, gree',
        }
    }
    moreOnZara={
        creation_date: 1975 
        number_stores: 10 000
    }
print(marque)
marque['number_stores']=2
print("nombre de boutique:",marque['number_stores'])
print("les client de zara sont:{}, {} and {} ".format(marque['type_of_clothes'][0],marque['type_of_clothes'][1],marque['type_of_clothes'][2]))
marque['country_création']='Spain'
if 'international_competitors' in marque:
    marque['international_competitors'].append('Desigual')
    print("Nos cooncurents sont:",marque['international_competitors'])
del marque['country_création']
print(marque)
print(marque['international_competitors'][len(marque['international_competitors'])-1])
print(marque['major_color']['US'])
print(len(marque))
for i in marque.keys():
    print(i)