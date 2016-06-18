def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
    FROM books
    WHERE books.series_id = 1
    ORDER BY books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
    FROM characters
    ORDER BY LENGTH(characters.motto) DESC LIMIT 1"
end

def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species)
    FROM characters
    GROUP BY species
    ORDER BY COUNT(characters.species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  #authors and subgenres
  "SELECT authors.name, subgenres.name
    FROM authors
    INNER JOIN subgenres
    WHERE authors.id = subgenres.id"
end

def select_series_title_with_most_human_characters
  #series and characters linked by series id
  "SELECT series.title
    FROM series
    INNER JOIN characters
    WHERE series.id = characters.series_id AND characters.species = 'human'
    ORDER BY characters.species DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  #characters and characters_books
  "SELECT characters.name, COUNT(character_books.book_id)
    FROM character_books
    INNER JOIN characters
    WHERE characters.id = character_books.character_id
    GROUP BY characters.name
    ORDER BY COUNT(character_books.book_id) DESC"
end
