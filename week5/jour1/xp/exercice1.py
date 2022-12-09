
class Cat:
    def __init__(self, cat_name, cat_age):
        self.cat_name = cat_name
        self.cat_age = cat_age
     
newCat1 = Cat('titi',3)
newCat2 = Cat('toto',1)
newCat3 = Cat('tata',5)

def oldestCat():
    print(f"The oldest cat is , and is <cat_age> years old")
    
    
print(newCat1.cat_age)
print(newCat2.cat_age)
print(newCat3.cat_age)