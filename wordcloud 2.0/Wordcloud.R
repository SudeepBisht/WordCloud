install.packages("tm")
install.packages("ctv")
install.packages("wordcloud")
install.packages("wordcloud")

library("ctv")
library (tm)
library (SnowballC)
library(wordcloud)



#Create a corpus from the collection of text files

fname <- file.path(getwd())
files <- Corpus(DirSource(fname))

#Data processing on the text files
files <- tm_map(files, PlainTextDocument)

for (j in seq(files))
{
 files[[j]] <- gsub("/"," ",files[[j]])
 files[[j]] <- gsub("@"," ",files[[j]])}

files <- tm_map(files,tolower)
files <- tm_map(files,removeWords, stopwords("english"))
files <- tm_map(files,removeNumbers)
files <- tm_map(files,removePunctuation)
files <- tm_map(files,stripWhitespace)

files <- tm_map(files, PlainTextDocument)

#  Create structured data from the text file
dtm <- DocumentTermMatrix(files)

# Making the word cloud using the structured form of the data


mtx <- as.matrix(dtm)
f <- sort(colSums(mtx),decreasing=TRUE)
word <- names(f)
data <- data.frame(word=word, freq=f)


wordcloud(data$word,data$freq,min.freq=2,random.order=F,random.color=T,colours=rainbow(7))

#random.color:If True colours are randomly choosen else
#             colours are selected based on the frequency

#random.order:Words are plotted in random order. 
#             If False words are pllotted in decreasing order

# data$freq is the frequency of the words in the file
