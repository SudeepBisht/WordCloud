WordCloud
=========

Using R a word cloud has been created taking into account the new tm 0.6.0 package


In the word cloud creation following packages were installed and loaded:

1. tm

2. ctv

3. wordcloud

4. SnowballC



In the creation of the word cloud all the punctuation and the numbers and other repeating punctuations and whitespaces have been removed. This can been seen in the statements tm_map.

The files that were taken into account for making the word cloud have a great size and a lot of words so to make the word cloud visually representable the data frequency has been limited.
The frequency limitation can be seen in the wordcloud command.

The file data is taken from the wikipedia page on R language.

NOTE: Put the files in your current working directory but the problem occurs that usually there are other files also in your working directry so all the files would be analyzed in making the wordcloud. To avoid such a situation put the files in a separate folder and put the file location in place of getwd(). 
  The file address needs to be in "" and either subsitute the forwardslashes with backslashes or add 1 more forwardslash       wherever a forward slash is there in the address. 

For a further study of wordcloud you can look at the below link:
  
  http://www.r-bloggers.com/create-twitter-wordcloud-with-sentiments/

It is a very good article on how to make a word cloud using sentimental analysis on twitter data.
