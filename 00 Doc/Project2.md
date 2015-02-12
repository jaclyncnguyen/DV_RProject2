---
title: "Project 2"
author: "Jeffrey Zhang and Jaclyn Nguyen"
date: "Monday, February 16, 2015"
output: html_document
---

Project 2 required Jeffrey and I to import a large data set onto Oracle Server and call the data into RStudio to analyze. 

Dataset: Jcn565-311Calls


```r
source("../01 Data/data_frame_orcl.R", echo = TRUE)
```

```
## 
## > library(ggplot2)
## 
## > df <- data.frame(eval(parse(text = substring(getURL(URLencode("http://129.152.144.84:5001/rest/native/?query=\"select * from JCN565_311Calls\""), 
## + .... [TRUNCATED]
```

```
## Error in substring(getURL(URLencode("http://129.152.144.84:5001/rest/native/?query=\"select * from JCN565_311Calls\""), : could not find function "getURL"
```

You can also embed plots, for example:


```r
ggplot(df, aes(x = LATITUDE, y = LONGITUDE, color = BOROUGH)) + geom_point() +  scale_x_discrete(breaks=df$LATITUDE)
```

```
## Error: ggplot2 doesn't know how to deal with data of class function
```

```r
ggplot(data = df) + geom_histogram(aes(x = AGENCY)) + ggtitle("311 Calls to Different Types of Agencies")
```

```
## Error: ggplot2 doesn't know how to deal with data of class function
```

```r
complaint <- subset(df, AGENCY == "HPD", select = c(COMPLAINT_TYPE))
```

```
## Error in subset.default(df, AGENCY == "HPD", select = c(COMPLAINT_TYPE)): object 'AGENCY' not found
```

```r
View(complaint)
```

```
## Error in as.data.frame(x): object 'complaint' not found
```

```r
ggplot (data = complaint, main = "HPD Complaint Breakdown") + geom_histogram(aes(x = COMPLAINT_TYPE)) + theme(axis.text.x = element_text(angle = 90, hjust = 1)) + ggtitle("HPD Complaint Breakdown")
```

```
## Error in ggplot(data = complaint, main = "HPD Complaint Breakdown"): object 'complaint' not found
```

```r
require(dplyr)
```

```
## Loading required package: dplyr
## 
## Attaching package: 'dplyr'
## 
## The following objects are masked from 'package:stats':
## 
##     filter, lag
## 
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

```r
require(tidyr)
```

```
## Loading required package: tidyr
```

```
## Warning in library(package, lib.loc = lib.loc, character.only = TRUE,
## logical.return = TRUE, : there is no package called 'tidyr'
```

```r
tbl_df(df)
```

```
## Error: data is not a data frame
```

```r
#df %>% select(ADDRESS_TYPE, BOROUGH) %>% filter(ADDRESS_TPYE == "ADDRESS") %>% tbl_df
```


