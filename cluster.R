########### Treating the data ###########
movies = read.table("movieLens.txt", header = F, sep = "|", quote = "\"")
str(movies)
colnames(movies) = c("id", "Title", "ReleaseDate", "VideoReleaseDate", "IMDB", "Unknown", "Action", "Adventure", "Animation", "Childrens", "Comedy", "Crime", "Documentary", "Drama", "Fantasy", "FilmNoir", "Horror", "Musical", "Mistery", "Romance", "SciFi", "Thriller", "War", "Western")
movies$id = NULL
movies$ReleaseDate = NULL
movies$VideoReleaseDate = NULL
movies$IMDB = NULL
movies = unique(movies)


####### Hierarquical Cluster ################
distances = dist(movies[2:20], method = "euclidean")
clusterMovies = hclust(distances, method = "ward.D")
plot(clusterMovies)
clusterGroups = cutree(clusterMovies, k = 10)
subset(movies, Title=="Men in Black (1997)")
clusterGroups[257]
cluster2 = subset(movies, clusterGroups == 2)
