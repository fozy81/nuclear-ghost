library(XML)
library(RCurl)
# Read and parse HTML file
doc.html = htmlTreeParse('http://www.hse.gov.uk/nuclear/quarterly-stat/2000-4.htm',
                         useInternal = TRUE)



# Extract all the paragraphs (HTML tag is p, starting at
# the root of the document). Unlist flattens the list to
# create a character vector.
doc.text = unlist(xpathApply(doc.html, '//h3', xmlValue))

# Replace all \n by spaces
doc.text = gsub('\\n', ' ', doc.text)

# Join all the elements of the character vector into a single
# character string, separated by spaces
doc.text = paste(doc.text, collapse = ' ')
##efef

doc2 <- readLines("http://www.hse.gov.uk/nuclear/quarterly-stat/2010-4.htm")

webpage <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2010-4.htm")

webpage2 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2000-4.htm")

grep("h2", doc2, value=TRUE)

sub("<h2\b[^>]*>(.*?)</h2>","\\1", webpage)

sub(".*?h3(.*?)</p><!.*", "\\1", webpage2)

sub(".*?Level(.*?)/.../.*", "\\1", webpage)

