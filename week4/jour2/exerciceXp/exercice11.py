sandwich_orders = ["Tuna sandwich", "Avocado sandwich", "Egg sandwich", "Sabih sandwich", "Pastrami sandwich"]
sandwich_orders.append("Pastrami sandwich")
sandwich_orders.append("Pastrami sandwich")
print(" la charcuterie est à court de pastrami")
while sandwich_orders.count("Pastrami sandwich")!=0 :
    sandwich_orders.remove("Pastrami sandwich")
print(sandwich_orders)