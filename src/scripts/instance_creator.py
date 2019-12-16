import pandas as pd
from collections import defaultdict

data = pd.read_csv('./booksDB.csv')

file = open("../ontology/ontology.pins","w")

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
        output =  "(" + instance_name + " of Author\n\t"
        output += "(gender " + gender + ")\n\t"
        output += "(name_ " + '"' + name.replace('\n', '') + '"' + ")\n\t"
        output += "(popularity " + popularity + ")\n\t"
        output += "(rating " + rating + ")\n)\n"
        file.write(output)

set = set()
for index, row in data.iterrows():
    title = row['book_title']
    if (not title in set):
        instance_name = "[ontology_Class" + str(instance_iterator) + "]"
        set.add(title)
        instance_iterator += 1
        output = "(" + instance_name + " of Book\n\t"
        output += "(author " + dict[row['author_name']] + ")\n\t"
        output += "(genre " + '"' + row['genre_1'] + '"' + ")\n\t"
        output += "(pages " + str(row['pages']) + ")\n\t"
        output += "(popularity " + getPopularity(row['num_ratings']) + ")\n\t"
        output += "(title " + '"' + (row['book_title'].replace('\n', '')).replace('      ', '') + '"' + ")\n\t"
        output += "(year " + str(row['publish_date']) + ")\n\t"
        output += "(rating " + str(row['book_average_rating']) + ")\n)\n"
        file.write(output)


file.close()
