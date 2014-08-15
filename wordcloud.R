install.packages("tm")
install.packages("ctv")
install.packages("wordcloud")
install.packages("wordcloud")

library("ctv")
library (tm)
library (SnowballC)
library(wordcloud)

install.views("NaturalLanguageProcessing")

#Create a corpus from the collection of text files

fname <- file.path(getwd())
files <- Corpus(DirSource(fname))

#Data processing on the text files
files <- tm_map(files, PlainTextDocument)

 for (j in seq(files))
   {files[[j]] <- gsub("/"," ",files[[j]])
    files[[j]] <- gsub("@"," ",files[[j]])}

files <- tm_map(files,tolower)
files <- tm_map(files,removeWords, stopwords("english"))
files <- tm_map(files,removeNumbers)
files <- tm_map(files,removePunctuation)
files <- tm_map(files,stripWhitespace)

#corpus_clean <- tm_map(news_corpus, content_transformer(tolower))
files <- tm_map(files, PlainTextDocument)

#  Create structured data from the text file
dtm <- DocumentTermMatrix(files)

# Making the word cloud using the structured form of the data


 mtx <- as.matrix(dtm)
 f <- sort(colSums(mtx),decreasing=TRUE)
  word <- names(f)
 data <- data.frame(word=word, freq=f)
 wordcloud(data$word,data$freq,min.freq=2)