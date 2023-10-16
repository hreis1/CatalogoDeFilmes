["Ação", "Comédia", "Drama", "Romance", "Documentário", "Suspense", "Terror", "Ficção científica"].each do |genero|
  Genre.find_or_create_by!(name: genero)
end

directors = [
  ["Quentin Tarantino", "Americano", "27-03-1963"],
  ["Martin Scorsese", "Americano", "17-11-1942"],
  ["Steven Spielberg", "Americano", "18-12-1946"],
  ["Christopher Nolan", "Inglês", "30-07-1970"],
  ["David Fincher", "Americano", "28-08-1962"],
  ["Spike Lee", "Americano", "20-03-1957"],
  ["Wes Anderson", "Americano", "01-05-1969"],
  ["Sofia Coppola", "Americana", "14-05-1971"],
  ["Alfred Hitchcock", "Inglês", "13-08-1899"],
  ["Stanley Kubrick", "Americano", "26-07-1928"],
  ["Francis Ford Coppola", "Americano", "07-04-1939"],
  ["Tim Burton", "Americano", "25-08-1958"],
  ["George Lucas", "Americano", "14-05-1944"],
  ["James Cameron", "Canadense", "16-08-1954"],
  ["Ridley Scott", "Inglês", "30-11-1937"],
  ["Peter Jackson", "Neozelandês", "31-10-1961"],
]
directors.each do |director|
  Director.find_or_create_by!(name:director[0], nationality:director[1] ,date_of_birth:director[2], genre_id:rand(1..8))
end


movies = [
  ["Pulp Fiction", "03-03-1995", "Assassino que trabalha para a máfia se apaixona pela esposa de seu chefe quando é convidado a acompanhá-la, um boxeador descumpre sua promessa de perder uma luta e um casal tenta um assalto que rapidamente sai do controle.", "EUA", 154, 1, 3],
  ["O Irlandês", "27-11-2019", "A saga épica de Martin Scorsese sobre o crime organizado americano no pós-guerra contada por um matador de aluguel. Estrelando Robert De Niro, Al Pacino e Joe Pesci.", "EUA", 209, 2, 3],
  ["O Poderoso Chefão", "15-08-1972", "A saga de uma família mafiosa siciliana que luta para encontrar um sucessor à altura do patriarca quando ele se aposenta, enquanto uma guerra com as outras famílias mafiosas irrompe.", "EUA", 175, 3, 3],
  ["O Poderoso Chefão II", "18-12-1974", "A continuação da saga da família Corleone, comandada por Michael, o novo Don. Agora vivendo em Las Vegas, ele tenta expandir seus negócios para Cuba, enquanto lida com os problemas dos filhos.", "EUA", 202, 3, 3],
  ["O Poderoso Chefão III", "25-12-1990", "Michael Corleone, agora um idoso, tenta fazer com que sua família se torne uma família completamente legalizada e encontra-se atraído para o mundo do crime organizado.", "EUA", 162, 3, 3],
  ["Os Bons Companheiros", "21-09-1990", "Henry Hill e seus amigos trabalham para a máfia em Nova York. Mas, em meio a tantos crimes, Henry acaba sendo preso e resolve se tornar informante da polícia.", "EUA", 146, 2, 3],
  ["Cassino", "24-11-1995", "Sam Rothstein é um jogador profissional enviado a Las Vegas para administrar o cassino Tangiers, financiado pelo Sindicato de Caminhoneiros, chefiado por Andy Stone. Sam faz seu trabalho com eficiência, controlando os lucros, mas não consegue controlar sua esposa viciada em drogas e seu amigo Nicky Santoro, um gângster violento.", "EUA", 178, 2, 3],
  ["Taxi Driver", "08-02-1976", "Travis Bickle é um jovem veterano do Vietnã, que volta para as ruas de Nova York trabalhando como motorista de táxi. Alienado da sociedade, ele passa as noites atormentadas pela solidão, depressão e insônia, refletindo sobre os problemas sociais que o cercam, e reage com violência crescente.", "EUA", 114, 2, 3],
  ["Os Infiltrados", "13-10-2006", "Billy Costigan é um jovem policial que recebe a missão de se infiltrar na máfia liderada por Frank Costello. Enquanto Billy tenta ganhar a confiança de Costello, outro policial, Colin Sullivan, se infiltra no departamento de polícia como informante de Costello. Quando suas identidades são descobertas, os dois começam uma corrida para descobrir a identidade um do outro.", "EUA", 151, 2, 3]
]

movies.each do |movie|
  Movie.find_or_create_by!(title:movie[0], release_year:movie[1] ,synopsis:movie[2], origin_country:movie[3], duration_minutes:movie[4], director_id:movie[5], genre_id:movie[6], status: 1)
end