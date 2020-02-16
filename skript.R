#Plenarprotokolle Projekt.

download.file("https://www.bundestag.de/resource/blob/682580/ccf88d025708157e86e61a49a5fa8695/19146-data.xml")

# Load the package required to read XML files.
library("XML")

# Also load the other required package.
library("methods")

# Give the input file name to the function.
result <- xmlParse(file = "./Rohdaten/19146-data.xml")

# Print the result.
print(result)

# Exract the root node form the xml file.
rootnode <- xmlRoot(result)

# Find number of nodes in the root.
rootsize <- xmlSize(rootnode)

# Print the result.
print(rootsize)

# Print the result.
print(rootnode[1])

# Get the first element of the first node.
print(rootnode[[1]][[2]])

xmldataframe <- xmlToDataFrame(rootnode[1])
print(xmldataframe)
