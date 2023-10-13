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


movies = [
  ["Pulp Fiction", 1995, "Assassino que trabalha para a máfia se apaixona pela esposa de seu chefe quando é convidado a acompanhá-la, um boxeador descumpre sua promessa de perder uma luta e um casal tenta um assalto que rapidamente sai do controle.", "EUA", 154, 1, 3],
  ["Cães de Aluguel", 1992, "Um grupo de criminosos planeja um roubo que acaba em um banho de sangue. Um dos sobreviventes suspeita que um deles é um policial disfarçado.", "EUA", 99, 1, 3],
  ["Os Bons Companheiros", 1990, "Henry Hill é um mafioso que viveu o auge da sua carreira nos anos 50, 60 e 70. Ele trabalha de forma violenta para ascender dentro da máfia, mas aos poucos vai se envolvendo com drogas e se tornando um homem paranóico.", "EUA", 146, 2, 3],
  ["Taxi Driver", 1976, "Travis Bickle é um jovem veterano do Vietnã que volta para as ruas de Nova York trabalhando como motorista de táxi. Cada vez mais perturbado com a corrupção ao seu redor, ele inicia uma jornada de violência por toda a cidade.", "EUA", 114, 2, 3],
  ["Os Infiltrados", 2006, "Billy Costigan é um jovem policial que recebe a missão de se infiltrar na máfia irlandesa que domina o sul de Boston. Enquanto Billy tenta ganhar a confiança de um dos chefes do grupo, outro policial, Colin Sullivan, se infiltra no departamento de polícia como informante dos mafiosos.", "EUA", 151, 2, 3],
  ["O Lobo de Wall Street", 2013, "Jordan Belfort é um ambicioso corretor da bolsa de valores que cria um verdadeiro império, enriquecendo de forma rápida, porém ilegal. Ele e seus amigos mergulham em um mundo de excessos, mas seus métodos ilícitos despertam a atenção da polícia.", "EUA", 180, 2, 3],
  ["O Aviador", 2004, "O filme conta a história de Howard Hughes, um excêntrico milionário que ficou conhecido por suas produções hollywoodianas e por quebrar recordes de velocidade em aviões.", "EUA", 170, 2, 3],
  ["Cassino", 1995, "Sam Rothstein é um apostador profissional enviado a Las Vegas para administrar um cassino de propriedade de um grupo de mafiosos. Sam acaba se envolvendo com uma prostituta e com uma ex-namorada do seu chefe.", "EUA", 178, 2, 3],
  ["O Irlandês", 2019, "O Irlandês é um épico sobre o crime organizado nos Estados Unidos do pós-guerra contado através da perspectiva do veterano da Segunda Guerra Mundial Frank Sheeran, um assassino profissional que trabalhou ao lado de algumas das personalidades mais marcantes do século 20.", "EUA", 209, 2, 3]
]

movies.each do |movie|
  Movie.find_or_create_by!(title:movie[0], release_year:movie[1] ,synopsis:movie[2], origin_country:movie[3], duration_minutes:movie[4], director_id:movie[5], genre_id:movie[6])
end