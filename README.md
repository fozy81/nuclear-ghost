nuclear-ghost
=============

This repository contains the quarterly nuclear incidents reports from The Office for Nuclear Regulation (An agency of the HSE) as machine readable documents.

Currently nuclear incident reports are released as unstructure html documents which are difficult to navigate, understand and analyse.

The initial idea of this repository was to write a script to scrape the ONR website and extract the data automatically but the html proved too unstructured to scrape. So I have opted to manually copy and paste the website into a suitable file format. 

The data presents some interesting questions:

* The incidents were not all rated using the [International Nuclear Events Scale](http://en.wikipedia.org/wiki/International_Nuclear_Event_Scale). It is a little unclear if these incidents don't reach this level or are awaiting categorisation. Some incidents are rated level '0' - this represents a 'deviation'. All incidents with no rating or 0 level rating have been given a 0 level for consistency in the FormattedLevel column.
* Not all incidents have exact dates or times. This is understandable in some instances but more precise details would be useful. The only incident with a stated time was 01:40 - perhaps night working poses more risks? We will never know without the data.
* I have not tried to categorise the incidents in terms of cause of problem or type of material or radiation - although this would be interesting to try if a suitable list of categories could be followed.
* The dataset is small but there looks to be temporal clustering of incidents at locations - possibly one incident leading to more incidents being detected...or perhaps a chain of events unfolding?  
* Why can't the ONR release machine readable, comprehensive documents? - at least according to one recent Freedom of Information [request](http://www.hse.gov.uk/nuclear/foi/2013/2013100405.htm) this was too difficult - surly this type of information should be at their finger tips?











