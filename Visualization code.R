### Visualizing data ###

library(ggplot2)
library(plotly)


### Histogram

par(mar = c(6.5, 4.1, 4.1, 2.1))

plot <- ggplot(df_joined, aes(severity)) +
  geom_bar(aes(fill = relatedness)) +
  labs(title = "Complications by Severity and Relatedness",
       x = "severity",
       y = NULL)

ggplotly(plot)


### Pie chart

colors <- rainbow(9)

ggplot(df_joined, aes(x = "", fill = complications)) +
  geom_bar(width = 1, stat = "count") +
  scale_fill_manual(values = colors) +
  coord_polar("y") +
  labs(title = "Proportion of Total Complications by Diagnosis",
       x = NULL,
       y = NULL,
       fill = NULL) +
  theme_void()

