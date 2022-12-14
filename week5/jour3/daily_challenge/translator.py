french_words= ["Bonjour", "revoir", "Bienvenue", "bientôt"] 
english_words = ["Hello","Goodbye","Welcome","See you soon"]
translate={}
for i in range(len(french_words)):
    translate[french_words[i]]=english_words[i]
print(translate)
