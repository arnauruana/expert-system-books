import pandas as pd

def isEnglish(s):
    try:
        s.encode(encoding='utf-8').decode('ascii')
    except UnicodeDecodeError:
        return False
    else:
        return True

def isYear(y):
    aux = str(y)
    return len(aux) == 4

data = pd.read_csv('./good_reads_final.csv')

remove_genres = {
 'Language',
 'Animals',
 'Autobiography',
 'Did Not Finish',
 'Parenting',
 'Comics',
 'Anthologies',
 'Shapeshifters',
 'Biography',
 'Amish',
 'Philosophy',
 'Design',
 'Music',
 'Gardening',
 'Sequential Art',
 'Lds',
 'Own',
 'How To',
 'Christianity',
 'Plays',
 'Asian Literature',
 'Mental Health',
 'Feminism',
 'Manga',
 'Lgbt',
 'Travel',
 'Glbt',
 'Family',
 'Couture',
 'Marriage',
 'Art',
 'Media Tie In',
 'United States',
 'World War II',
 'Writing',
 'European Literature',
 'Inspirational',
 'Eastern Africa',
 'Poetry',
 'Relationships',
 'Childrens',
 'War',
 'Self Help',
 'Religion',
 'Sexuality',
 'Sociology',
 'Cultural',
 'Literature',
 'Education',
 'Holiday',
 'Nonfiction',
 'Science',
 'Esoterica',
 'Sports and Games',
 'Sports',
 'Psychology',
 'Retellings',
 'Business',
 'Humor',
 'Health',
 'Occult',
 'Polyamorous',
 'Food and Drink',
 'Pulp',
 'Medical',
 'Warfare',
 'Northern Africa',
 'Football',
 'Spirituality',
 'Unfinished',
 'Teaching',
 'Social Science',
 'Leadership',
 'Reference',
 'Military History',
 'Dungeons and Dragons',
 'Economics',
 'Politics'}

for rm in remove_genres:
    data = data[~data.genre_1.str.contains(rm)]
    data = data[~data.genre_2.str.contains(rm)]

data['genre_1'] = data['genre_1'].replace({'Fiction':'Uncategorized',
    'Literary Fiction'  : 'Uncategorized',
    'Fan Fiction'       : 'Uncategorized',
    'Novels'            : 'Uncategorized',
    'Novella'           : 'Uncategorized',
    'Young Adult'       : 'Young',
    'Dark'              : 'Horror',
    'Category Romance'  : 'Romance',
    'Adult Fiction'     : 'Adult',
    'Suspense'          : 'Thriller',
    'Spy Thriller'      : 'Thriller',
    'Mystery'           : 'Thriller',
    'Death'             : 'Horror',
    'New Adult'         : 'Young',
    'Paranormal'        : 'Horror',
    'Speculative Fiction':'Thriller',
    'Womens Fiction'    : 'Romance',
    'Mythology'         : 'Religious',
    'Christian Fiction' : 'Religious',
    'Biblical Fiction'  : 'Religious',
    'Christian'         : 'Religious',
    'Realistic Fiction' : 'Realistic',
    'History'           : 'Historical',
    'Dark Fantasy'      : 'Fantasy',
    'Fairy Tales'       : 'Fantasy',
    'Magical Realism'   : 'Fantasy',
    'Love'              : 'Romance'})

drop_list = ['author_genres',
    'birthplace',
    'author_id',
    'author_page_url',
    'author_review_count',
    'book_fullurl',
    'book_id',
    'genre_2',
    'num_reviews']

data = data.drop(drop_list, axis = 1)

auxiliary_date = []
for date in data['publish_date']:
    aux = str(date)
    aux = aux.split(" ")
    auxiliary_date.append(aux[-1])

data['publish_date'] = auxiliary_date

for date in data['publish_date']:
    if (not isYear(date)):
        data = data[~data.publish_date.str.contains(date)]

for author in data['author_name']:
    if (not isEnglish(author)):
        data = data[~data.author_name.str.contains(author)]

for title in data['book_title']:
    if (not isEnglish(title)):
        data = data[~data.book_title.str.contains(title)]

data.to_csv('./booksDB.csv')
