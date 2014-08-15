WordCloud
=========

Using R a word cloud has been created taking into account the new tm 0.6.0 package


In the word cloud creation following packages were installed and loaded:
1. tm
2. ctv
3. wordcloud

Also NaturalLanguageProcessing views were taken into account

In the creation of the word cloud all the punctuation and the numbers and other repeating punctuations and whitespaces have been removed. This can been seen in the statements tm_map.

The files that were taken into account for making the word cloud have a great size and a lot of words so to make the word cloud visually representable the data frequency has been limited.
The frequency limitation can be seen in the wordcloud command.
