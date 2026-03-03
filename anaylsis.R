elec <- read.csv(file.choose(), header = TRUE, row.names = 1)
head(elec)
library(factoextra)
set.seed(49747)

# Standardize the dataset
elec_scaled <- scale(elec)

# Hierarchical Clustering
dist_matrix <- dist(elec_scaled) # Compute distance matrix
hc_complete <- hclust(dist_matrix, method = "complete") # Hierarchical clustering using complete linkage
# Plot the dendrogram
plot(hc_complete, main = "Hierarchical Clustering Dendrogram (Complete Linkage)",
     xlab = "", sub = "", cex = 0.8)
abline(h = 7, col = "red") # Cut at an appropriate height for 3 clusters

# Cut tree to form 3 clusters
clusters_hc <- cutree(hc_complete, k = 3)
table(clusters_hc)
# Add cluster membership to the dataset
elec$Cluster_HC <- clusters_hc
table(elec$Cluster_HC)

# K-Means Clustering
set.seed(49747) # For reproducibility
km_out <- kmeans(elec_scaled, centers = 3, nstart = 20)
km_out
# Add K-Means cluster membership to the dataset
elec$Cluster_KMeans <- km_out$cluster
table(elec$Cluster_KMeans)
# Compare hierarchical and k-means clustering
comparison <- table(Cluster_Hierarchical = elec$Cluster_HC, Cluster_KMeans = elec$Cluster_KMeans)
print("Comparison of Hierarchical and K-Means Clustering:")
print(comparison)
# Visualize k-means clustering
fviz_cluster(km_out, data = elec_scaled)
# Summarize cluster characteristics
hc_summary <- aggregate(elec_scaled, by = list(Cluster = clusters_hc), mean)
km_summary <- aggregate(elec_scaled, by = list(Cluster = km_out$cluster), mean)
print("Hierarchical Clustering Cluster Characteristics:")
print(hc_summary)
print("K-Means Clustering Cluster Characteristics:")
print(km_summary)
