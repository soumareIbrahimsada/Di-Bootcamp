import json
class MenuM:
    def __init__(self):
        with open('restaurant_menu.json','r') as f:
            self.menu=json.load(f)

    def add(self,name, price):
        newItem = {
            'name': name,
            'price': price
        }
        self.menu['items'].append(newItem)
    def remove(self,name):
        index=0
        for item in self.menu['items']:
            if name in item['name']:
                del self.menu['items'][index]
                return True
            index+=1
        else: return False
    
    def save(self):
        with open('restaurant_menu.json','w') as f:
            json.dump(self.menu,f,indent=2,sort_keys=True)
        return True
if __name__=='__main__':
    x = MenuM()
    x.add_item('melon',20)
    print(x.remove_item('Vegetable soup'))
    print(x.menu['items'])
    print(x.save_to_file())

    
        
        