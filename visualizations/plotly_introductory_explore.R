require(plotly)

# basic plotly axis with tick styling/placement
a <- list(
  autotick = FALSE,
  ticks = "outside",
  tick0 = 0,
  dtick = 0.25,
  ticklen = 5,
  tickwidth = 2,
  tickcolor = toRGB("blue")
)
s <- seq(1, 4, by = 0.25)
fig <- plot_ly(x = ~s, y = ~s)
fig <- fig %>% layout(xaxis = a, yaxis = a)

fig

# plotly axis with categorical axes
fig <- plot_ly(
  x = c('A12', 'BC2', 109, '12F', 215, 304),
  y = c(1,6,3,5,1,4),
  type = 'bar',
  name = 'Team A',
  text = c('Apples', 'Pears', 'Peaches', 'Bananas', 'Pineapples', 'Cherries')
)
fig <- fig %>% layout(
  title = 'Inventory',
  xaxis = list(
    type = 'category',
    title = 'Product Code'
  ),
  yaxis = list(
    title = '# of Items in Stock',
    range = c(0,7)
  )
)

fig
