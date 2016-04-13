
file = readLines(file("stdin"))
theText = paste(file, collapse="")

# Let the text is out of  four languages.

planguages = c("English", "French", "German", "Spanish")

#creating dictionary words
englishcorpus = c("the", "be", "to", "of", "and", "a", "in", "that", "have", "I", "which", "what")
frenchcorpus = c("à", "être", "et", "en", "avoir", "que", "pour")
germancorpus = c("ich", "du", "er", "sie", "es", "wir", "ihr", "der", "die", "das", "ein", "eine", "einen", "alle", "bis", "durch")
spanishcorpus = c("el", "y", "ser", "haber", "con", "para", "como", "estar", "tener", "lo", "o")

#intializing possible words of every language zero

nglish = 0
nfrench = 0
ngerman = 0
nspanish = 0

##counting the match possible

for (w in EnglishWords) {
    if(grepl(paste(" ", w, " ", sep=""), theText)) English = English + 1
}
English = English / length(EnglishWords)
for (w in FrenchWords) {
    if(grepl(paste(" ", w, " ", sep=""), theText)) French = French + 1
}
French = French / length(FrenchWords)
for (w in GermanWords) {
    if(grepl(paste(" ", w, " ", sep=""), theText)) German = German + 1
}
German = German / length(GermanWords)
for (w in SpanishWords) {
    if(grepl(paste(" ", w, " ", sep=""), theText)) Spanish = Spanish + 1
}
Spanish = Spanish / length(SpanishWords)



answerindex = c(English, French, German, Spanish)


#choosing the maximum as it tells how much nearer it is to language.
answer = answerOptions[which(answerindex==max(answerindex))]
write(answer, stdout())
