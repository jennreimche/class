#read the input data
stat1_interactions_new <- read.csv("/Users/jennifer/Documents/bioinformatics/r/stat1_interactions.tsv",sep="\t")

#extract the first two and the last column
statsmallnew <- stat1_interactions_new[,c(1,2,15)]

#extract the interactions with more than 0.5 score
statsmallnewfiltered <- subset(statsmallnew, combined_score >= 0.5)

#write the filtered interactions in to a file
write.table(statsmallnewfiltered, "statsmallfiltered.txt", sep = "\t", quote = FALSE, row.names = FALSE)

#print the score distribution graph; first create an empty picture (png) , and when you plot it it writes it into the empty picture
png('statsmallnew.png')
plot(statsmallnew$combined_score)
dev.off()

message("Script ran successfully, all outputs are in the working director")

#run this in the terminal from /Users/jennifer/Documents/bioinformatics/r/ with the command Rscript myrscript.r