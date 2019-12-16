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
    return len(aux) == 4 and aux.isdigit()

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

auxiliary_genre = []
for index, row in data.iterrows():
    genre_1 = row['genre_1']
    genre_2 = row['genre_2']
    if (genre_1 == 'Fiction' or genre_1 == 'Novels' or genre_1 == 'Young Adult' or genre_1 == 'Adult Fiction'):
        genre_1 = genre_2
    auxiliary_genre.append(genre_1)
data['genre_1'] = auxiliary_genre

data['genre_1'] = data['genre_1'].replace({
    'Fiction'           : 'Uncategorized',
    'See top shelves…'  : 'Uncategorized',
    'Literary Fiction'  : 'Uncategorized',
    'Fan Fiction'       : 'Uncategorized',
    'Novels'            : 'Uncategorized',
    'Novella'           : 'Uncategorized',
    'American'          : 'Uncategorized',
    'Adult Fiction'     : 'Adult',
    'Young Adult'       : 'Young',
    'New Adult'         : 'Young',
    'Gothic'            : 'Horror',
    'Dark'              : 'Horror',
    'Paranormal'        : 'Horror',
    'Death'             : 'Horror',
    'Suspense'          : 'Thriller',
    'Spy Thriller'      : 'Thriller',
    'Mystery'           : 'Thriller',
    'Speculative Fiction':'Thriller',
    'Category Romance'  : 'Romance',
    'Love'              : 'Romance',
    'Womens Fiction'    : 'Romance',
    'Dark Fantasy'      : 'Fantasy',
    'Fairy Tales'       : 'Fantasy',
    'Magical Realism'   : 'Fantasy',
    'Mythology'         : 'Religious',
    'Christian Fiction' : 'Religious',
    'Biblical Fiction'  : 'Religious',
    'Christian'         : 'Religious',
    'Realistic Fiction' : 'Realistic',
    'Apocalyptic'       : 'Adventure',
    'History'           : 'Historical',
    })

drop_list = ['author_genres',
    'birthplace',
    'author_id',
    'author_page_url',
    'author_review_count',
    'book_fullurl',
    'book_id',
    'genre_2',
    'num_reviews',
    'score']

data = data.drop(drop_list, axis = 1)

data = data[~data.author_name.str.contains("Punathil Kunjabdulla")]
data = data[~data.author_name.str.contains("Lalithambika Antharjanam")]
data = data[~data.author_name.str.contains("Sethu")]

auxiliary_date = []
for date in data['publish_date']:
    aux = str(date)
    aux = aux.split(" ")
    auxiliary_date.append(aux[-1])
data['publish_date'] = auxiliary_date

auxiliary_title = []
for title in data['book_title']:
    aux = ((title.replace('&', '')).replace('(', '')).replace(')', '')
    auxiliary_title.append(aux)
data['book_title'] = auxiliary_title

data = data[data.pages != '0']


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
