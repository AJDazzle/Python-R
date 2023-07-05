library(tidyverse)
theme_set(theme_bw(16))
library(palmerpenguins)

library(NMF)
library(fastICA)
library(umap)
library(Rtsne)



penguins %>%
  glimpse()


scaled_data <- penguins %>%
  drop_na()%>%
  mutate(year=factor(year)) %>%
  select(where(is.numeric)) %>%
  scale()

scaled_data %>%
  head()

species <-  penguins %>%
  drop_na() %>%
  pull(species)

pca_prcomp_res <- prcomp(scaled_data)

str(pca_prcomp_res)

p_pca <- pca_prcomp_res$x %>%
  as.data.frame() %>%
  ggplot(aes(x=PC1, y=PC2, color=species))+
  geom_point()+
  labs(subtitle="PCA")
print(p_pca)
ggsave("PCA_plot_in_R.png",width=8, height=6)

svd_res <- svd(scaled_data)
str(svd_res)

p_svd <- svd_res$u %>%
  as.data.frame() %>%
  rename(SV1=V1, SV2=V2) %>%
  ggplot(aes(x=SV1, y=SV2, color=species))+
  geom_point()+
  labs(subtitle="SVD")
print(p_svd)
ggsave("SVD_plot_in_R.png", width=8, height=6)


tsne_res <- Rtsne(scaled_data)
str(tsne_res)

p_tsne <- tsne_res$Y %>%
  as.data.frame() %>%
  rename(tSNE1=V1, tSNE2=V2) %>%
  ggplot(aes(x=tSNE1, y=tSNE2, color=species))+
  geom_point()+
  labs(subtitle="tSNE")
print(p_tsne)
ggsave("tSNE_plot_in_R.png", width=8, height=6)