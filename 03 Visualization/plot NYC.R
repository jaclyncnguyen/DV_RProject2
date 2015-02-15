ggplot(df, aes(x = LATITUDE, y = LONGITUDE, color = BOROUGH)) + geom_point() +  scale_y_discrete(breaks=df$LATITUDE) + scale_x_discrete(breaks=df$LONGITUDE)
