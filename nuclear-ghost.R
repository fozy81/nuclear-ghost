##### Failed attempt to scrape Office of Nuclear Regulation website. 

### but useful for extracting html text into csv file in repo.



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

webpage <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2001-1.htm")

webpage1 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2000-4.htm")
webpage2 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2001-1.htm")
webpage3 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2001-2.htm")
webpage4 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2001-3.htm")
webpage5 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2001-4.htm")
webpage6 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2002-1.htm")
webpage7 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2002-2.htm")
webpage7 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2002-3.htm")
webpage8 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2002-4.htm")
webpage9 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2004-2.htm")
webpage9 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2005-1.htm")
webpage10 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2005-2.htm")
webpage11 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2005-4.htm")
webpage12 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2006-3.htm")
webpage12 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2006-4.htm")
webpage12 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2007-2.htm")
webpage12 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2008-3.htm")
webpage12 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2009-2.htm")
webpage12 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2010-1.htm")
webpage12 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2010-4.htm")
webpage12 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2011-1.htm")
webpage12 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2011-2.htm")
webpage12 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2011-3.htm")
webpage12 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2012-1.htm")
webpage12 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2012-4.htm")
webpage12 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2013-2.htm")
webpage12 <- getURL("http://www.hse.gov.uk/nuclear/quarterly-stat/2013-3.htm")



grep("h2", doc2, value=TRUE)

sub("<h2\b[^>]*>(.*?)</h2>","\\1", webpage)

sub(".*?h3(.*?)</p><!.*", "\\1", webpage2)

sub(".*?Level(.*?)/.../.*", "\\1", webpage)

