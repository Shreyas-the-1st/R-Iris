library(ggplot2)
library(ggthemes)

plot <- ggplot(
  data = iris,
  mapping = aes(x = Petal.Length, y = Petal.Width)
) +
  geom_point(mapping = aes(color = Species, shape = Species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Relationship Between Petal Length and Width",
    x = "Petal Length (cm)",
    y = "Petal Width (cm)",
    color = "Flower Species",
    shape = "Flower Species"
  ) +
  scale_color_colorblind()

# Display the graph
print(plot)
