["Ação", "Comédia", "Drama", "Romance", "Documentário", "Suspense", "Terror", "Ficção científica"].each do |genero|
  Genre.find_or_create_by!(name: genero)
end

directors = [
  ["Quentin Tarantino", "Americano", "1963-03-27"],
  ["Martin Scorsese", "Americano", "1942-11-17"],
  ["Steven Spielberg", "Americano", "1946-12-18"],
  ["Christopher Nolan", "Inglês", "1970-07-30"],
  ["David Fincher", "Americano", "1962-08-28"],
  ["Spike Lee", "Americano", "1957-03-20"],
  ["Wes Anderson", "Americano", "1969-05-01"],
  ["Sofia Coppola", "Americana", "1971-05-14"],
  ["Alfred Hitchcock", "Inglês", "1899-08-13"],
  ["Stanley Kubrick", "Americano", "1928-07-26"],
  ["Francis Ford Coppola", "Americano", "1939-04-07"],
  ["Tim Burton", "Americano", "1958-08-25"],
  ["George Lucas", "Americano", "1944-05-14"],
  ["James Cameron", "Canadense", "1954-08-16"],
  ["Ridley Scott", "Inglês", "1937-11-30"],
  ["Peter Jackson", "Neozelandês", "1961-10-31"]
]
directors.each do |director|
  Director.find_or_create_by!(name:director[0], nationality:director[1] ,date_of_birth:director[2], genre_id:rand(1..8))
end