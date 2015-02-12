#from above plot, we know in HPD Dept, HEAT/HOT WATER is the most severe problem in these cities on average.
#Now we are curious about in which citys they have more compliants and which areas (by zipcode) in those cities have most complaints

df2 <- df %>% select(COMPLAINT_TYPE,CITY,INICIDENT_ZIP) %>% filter(COMPLAINT_TYPE %in% 'HEAT/HOT WATER')
ggplot(df3, aes(x = factor(CITY), fill = factor(INICIDENT_ZIP))) + geom_bar(width = 1)

# from the graph, we know in city BRONX,BROOKLYN and NEW YORK, there are much more complaints than other citis.
# so we will focus on these three cities to see which area is most severe in each city
# since there are too many zipcodes, it is better to represent them by each city and use the histgram
# for BRONX
df3 <- df2 %>% select(CITY,INICIDENT_ZIP) %>% filter(CITY %in% 'BRONX')
ggplot(df3) + geom_histogram(colour='darkgreen',aes(x=INICIDENT_ZIP)) + labs(title='HEAT/HOT WATER Compliants Distribution by area in BRONX')
# we can do the same for BROOKLYN and NEW YORK