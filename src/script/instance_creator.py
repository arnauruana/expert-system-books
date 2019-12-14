import pandas as pd
from collections import defaultdict

data = pd.read_csv('./booksDB.csv')

file = open("./instances.pins","w")

def getPopularity(p):
    if (p > 100000):
        return "high"
    elif (p > 10000 and p <= 100000):
        return "medium"
    else:
        return "low"

dict = dict()
instance_iterator = 10000
for index, row in data.iterrows():
    name = row['author_name']
    if (dict.get(name) == None):
        instance_name = "[ontology_Class" + str(instance_iterator) + "]"
        dict[name] = instance_name
        instance_iterator += 1
        gender = row['author_gender']
        popularity = getPopularity(row['author_rating_count'])
        rating = str(row['author_average_rating'])
        output =  "(" + instance_name + " of  Author"
        output += " (gender " + gender + ")"
        output += " (name_ " + '"' + (name.replace('\n', '')).replace(' ', '') + '"' + ")"
        output += " (popularity " + popularity + ")"
        output += " (rating " + rating + "))\n\n"
        file.write(output)

for index, row in data.iterrows():
    title = row['book_title']
    instance_name = "[ontology_Class" + str(instance_iterator) + "]"
    instance_iterator += 1
    output = "(" + instance_name + " of Book"
    output += " (author " + dict[row['author_name']] + ")"
    output += " (genre " + '"' + row['genre_1'] + '"' + ")"
    output += " (pages " + str(row['score']) + ")"
    output += " (popularity " + getPopularity(row['num_ratings']) + ")"
    output += " (title " + '"' + (row['book_title'].replace('\n', '')).replace(' ', '') + '"' + ")"
    output += " (year " + row['publish_date'] + ")"
    output += " (rating " + str(row['pages']) + "))\n\n"
    file.write(output)


file.close()
