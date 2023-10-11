["Ação", "Comédia", "Drama", "Romance", "Documentário", "Suspense", "Terror", "Ficção científica"].each do |genero|
  Genero.find_or_create_by!(nome: genero)
end