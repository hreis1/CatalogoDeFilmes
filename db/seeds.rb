["Ação", "Comédia", "Drama", "Romance", "Documentário", "Suspense", "Terror", "Ficção científica"].each do |genero|
  Genre.find_or_create_by!(name: genero)
end

directors = [
  ["Quentin Tarantino", "Americano", "27-03-1963"],
  ["Martin Scorsese", "Americano", "17-11-1942"],
  ["Steven Spielberg", "Americano", "18-12-1946"],
  ["Mike Mitchell", "Americano", "18-10-1970"],
  ["Ti West", "Americano", "05-10-1980"],
  ["Christopher Landon", "Americano", "27-03-1975"],
  ["James Wan", "Australiano", "27-02-1977"]
]
directors.each do |director|
  Director.find_or_create_by!(name:director[0], nationality:director[1] ,date_of_birth:director[2], genre_id:rand(1..8))
end


movies = [
  ["Pulp Fiction", "03-03-1995", "Assassino que trabalha para a máfia se apaixona pela esposa de seu chefe quando é convidado a acompanhá-la, um boxeador descumpre sua promessa de perder uma luta e um casal tenta um assalto que rapidamente sai do controle.", "EUA", 154, 1, 3],
  ["O Irlandês", "27-11-2019", "A saga épica de Martin Scorsese sobre o crime organizado americano no pós-guerra contada por um matador de aluguel. Estrelando Robert De Niro, Al Pacino e Joe Pesci.", "EUA", 209, 2, 3],
  ["O Poderoso Chefão", "15-08-1972", "A saga de uma família mafiosa siciliana que luta para encontrar um sucessor à altura do patriarca quando ele se aposenta, enquanto uma guerra com as outras famílias mafiosas irrompe.", "EUA", 175, 3, 3],
  ["Taxi Driver", "08-02-1976", "Travis Bickle é um jovem veterano do Vietnã, que volta para as ruas de Nova York trabalhando como motorista de táxi. Alienado da sociedade, ele passa as noites atormentadas pela solidão, depressão e insônia, refletindo sobre os problemas sociais que o cercam, e reage com violência crescente.", "EUA", 114, 2, 3],
  ["Kung Fu Panda 4", "07-03-2024", "Po e os Cinco Furiosos enfrentam um novo vilão, que planeja usar uma arma secreta e imbatível para conquistar a China e destruir o kung fu.", "EUA", 90, 4, 1],
  ["MaXXXine", "07-03-2024", "Maxine é uma mulher que trabalha como segurança em uma loja de departamentos. Certo dia, ela se vê em meio a uma conspiração de espionagem internacional, e precisa lutar para salvar sua vida.", "EUA", 90, 5, 7],
  ["Pânico 7", "07-03-2024", "Uma nova onda de crimes começa a acontecer na cidade de Woodsboro, e Sidney Prescott precisa voltar para descobrir quem é o novo assassino.", "EUA", 90, 5, 6],
  ["Invocação do Mal",  "13-09-2013", "Os investigadores paranormais Ed e Lorraine Warren trabalham para ajudar a família aterrorizada por uma entidade demoníaca em sua fazenda.", "EUA", 112, 5, 7]
]

movies.each do |movie|
  Movie.find_or_create_by!(title:movie[0], release_year:movie[1] ,synopsis:movie[2], origin_country:movie[3], duration_minutes:movie[4], director_id:movie[5], genre_id:movie[6])
end