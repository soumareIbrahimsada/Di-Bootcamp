

class Circle:
   # r = input("insert la valeur du rayon: ")
    def __init__(self,r):
        self.r=r
        self.area=0
        self.liste=[]
    def area(self):
        self.area=(r**2)*3.14
    def __str__(self):
        return f'le rayon du cercle est: {self.r},l\'air du cercle est: {self.area}'
    def __add__(self,cercle2):
        self.r+=cercle2.r
        return Circle(self.r)
    def __lt__(self, cercle2):
        if self.r < cercle2.r:
            return True
        else:
            return False
    def __eq__(self,cercle2):
        if self.r==cercle2.r:
            return True
        else:
            return False
