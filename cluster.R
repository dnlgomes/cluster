########### Treating the data ###########
movies = read.table("movieLens.txt", header = F, sep = "|", quote = "\"")
str(movies)
colnames(movies) = c("id", "Title", "ReleaseDate", "VideoReleaseDate", "IMDB", "Unknown", "Action", "Adventure", "Animation", "Childrens", "Comedy", "Crime", "Documentary", "Drama", "Fantasy", "FilmNoir", "Horror", "Musical", "Mistery", "Romance", "SciFi", "Thriller", "War", "Western")
movies$id = NULL
movies$ReleaseDate = NULL
movies$VideoReleaseDate = NULL
movies$IMDB = NULL
movies = unique(movies)
