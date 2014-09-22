---
layout: post
title: "Review of Online Archive of California"
modified:
categories: 2014
excerpt:
tags: [digital humanities, coursework]
image:
  feature:
date: 2014-09-19T23:55:19-04:00
---

<!--   

Management
 •	Who owns or manages the digital library? | "Administered by the Digital Special Collections program of University of California's California Digital Library."
 •	What is the digital library owner’s purpose or goal in making the collection available?
 •	How long has it been available? | Since 2002, EAD standard, redesigned in 2008-2009.  
 •	When was it last updated? | 
 •	Is the digital library run by one institution or a consortium? | 
Staffing
 •	How large is the project team? | According to [this page](http://www.cdlib.org/services/access_publishing/dsc/), the Digital Special Collections Team consists of six people.  
 •	What are the roles and backgrounds of the participants in the project?
Content
 •	What is the subject/topic of the digital library?
 •	Does the digital library hold material from multiple institutions?
 •	How is content organized in the digital library?
Metadata
 •	Is a metadata standard used? If so, which one(s)?
 •	Is metadata shared through OAI or other mechanisms?
 •	What metadata was available at the start of the project? How was it converted to digital form if it was not already digital?
 •	What new metadata creation (if any) was required for the project.
Technical Infrastructure
 •	What software does the digital library use to run the library?
 •	Was the software programmed in-house or is it an off-the-shelf software package?
 •	What file formats are the digital objects stored in? Are the preservation formats different from access format?
Access
 •	Who is the audience for the digital library?
 •	What searching and browsing functionality is provided?
 •	Is copyright information available for the digital library? If so, what is the copyright policy for the digital library?

-->   

This post was originally an assignment for [John Walsh's](http://biblicon.org/about) "Z652 Digital Libraries" [course](http://www.soic.indiana.edu/graduate/courses/index.html?number=z652&department=ILS) at IU-Bloomington. 
{: .notice}  

![Banner image of Online Archive of California's logo and search bar.](/images/OAC_Banner.png)

A fantastic clearing house of information about Californian collections, the [Online Archive of California](http://www.oac.cdlib.org/) serves as a centralized set of links to and descriptions of an enormous number of collections from various archives, historical societies, libraries, museums, and special collections in California, including each campus of the University of California. According to the OAC's about page, this makes for over 200 contributing institutions, more than 20,000 online collection guides, and more than 220,000 digital images and documents.[^about] Administered by the Digital Special Collections program of University of California's California Digital Library (CDL), the Collection aims to increase the ease with which collections held throughout a variety of Californian institutions can be found by researchers. In addition to increasing this "findability," the Archive benefits the involved member institutions by giving access to a variety of tools, services, and training from the OAC, as well as by expanding grant opportunities as a result of the partnership with the CDL.   

As a project, the OAC goes back to a prototype finding aid standard made in 1993 at the UC Berkeley Libraries. In 1995, several University of California libraries began "UC-EAD" to test Encoded Archival Description to integrate access to collections information across the UC campuses. The project outgrew its initial UC cross-campus scope and was renamed the Online Archive of California in 1998 when it began including information about collections housed elsewhere.[^elsewhere] Due to its consortial nature, it's difficult to determine when the resources available through the OAC were last available. The site also does not provide an easily-found list of when collections were added to its list, but for what it is worth, the CDL's page about the OAC was last updated on 13 December, 2013.[^CDLOAC] The CDL Digital Special Collections administers the OAC, but its component descriptions and representative digital files come from the member institutions.        

This Digital Special Collections team includes six people: a "Director," "Technical Lead," "Program Coordinator," "Contributor Support Specialist," "Programmer Analyst," and "Data Consultant." It appears that five work in Oakland and one in San Diego. Although the team does not list every member's background, their previous experience appears to vary in precisely the way that seems common to digital humanities/digital libraries work: Catherine Mitchell, the Director, has a Ph.D. in English Literature from UC Berkeley and was previously the Web Director at the Commonwealth Club of San Francisco; Brian Tingle, the Technical Lead, received a B.S> in Ecology, Behavior, & Evolution from UC San Diego and has worked from the UC Libraries since 1996; and Adrian Turner, the Data Consultant, earned an MLIS from UCLA and an MA from UC Santa Cruz and has worked as an archivist and manuscripts processor at UC Irvine Special Collections and Archives, among other places.[^OAC_DSC_folks] The OAC has a broad focus, taking any collection held by a Californian archive, college, historical society, library, museum, special collection, or university as its subject. As shown in the image below, content in the OAC is browsable by institution, by collection, and by location on a map—the last of which must be particularly useful to visiting researchers unfamiliar with the size and geography of California.   

![OAC browse functions—especially geography!](/images/Online_Archive_of_California_-_Browse_Map.png)  

Not surprisingly, considering its history as a means of testing the Encoded Archival Description (EAD) metadata standard, the OAC uses EAD extensively. As of July 2008, the site allows for searches across MARC records and EAD through a single search system.[^OAChist] According to its [technical information page](http://www.cdlib.org/services/access_publishing/dsc/technical.html), the Metadata Encoding and Transmission Standard (METS) and the Archival Resource Key (ARK) schema are also used for the content in the repository shared by the OAC and Calisphere.[^OACtech] The Archive makes its metadata records available for other aggregators through [OAI-PMH](http://www.cdlib.org/services/access_publishing/dsc/contribute/oai_pmh.html).[^OAIPMH] The project began in part to test EAD, but the MARC records (specifically MARC21) that were later integrated likely preceded the OAC. It's unclear how these records were converted to digital format when and if it was necessary.   

According to the ["Calisphere and OAC Technical Information"](http://www.cdlib.org/services/access_publishing/dsc/technical.html) page, CDL developed a platform based on XML and XSLT for the repository at the heart of the OAC and Calisphere projects. This platform is packaged as the eXtensible Text Framework, or XTF, containing Java Servlets, Lucene indexing technology, and XSLT stylesheets. Lucene, made by Apache, seems to be the only off-the-shelf software package used by the OAC, with the bulk instead being programmed in-house—or else customized, as the OAC has done with LuraTech's Image Content Server. The images used in the OAC are JPG-2000 files, derived from TIFF images. The OAC employs XTF for search and delivery of TEI, PDF, or imaged text-based digital objects, as well as EAD collection guides and MARC records. CDL's [Guidelines for Digital Objects](http://www.cdlib.org/services/access_publishing/dsc/contribute/docs/GDO.pdf) details the OAC's use of files.[^CDLGDP] Due to the range of object types, there is a wide range of format choice: JPG, JPG-2000, PNG, TIFF, HTML, XML, PDF/A, UTF-8, ASCII, AIFF, WAVE, GZIP, and ZIP files are the listed preferred format choices. QuickTime VR and GIF are also mentioned, but they are not on the list of "preferred formats" stated above. If a production TIFF is submitted, it will be used for to derive the displayed JGP-2000 image and then deleted rather than used as a preservation format.   

The OAC aims to aid "research-oriented users who want to go beyond what is available online and locate the actual, physical item," whereas its sibling Calisphere draws from the same digital content to serve a website targeting "users whose primary interest is to view digitized images and documents."[^Calisphere] Searches can be performed from a single bar, which then allows limiters to be placed on the results. Results can be ordered by relevance and title, with limits available by institution, by date (to the decade), and whether online items are available (i.e. images or text beyond the OAC's description). The OAC seems to place an equal emphasis on browsing, for its landing page highlights that the Archive can be browsed by institution, collection, and map. Not only are these functions accessible from a menu bar across the top, but the visitor will immediately recognize these capabilities because they present themselves in three columns, already populated with information (see image below).      

![Image of OAC's landing page with three columns of browsing functions.](/images/OAC_Landing.png)  

In a section of [its "Help" page,](http://www.oac.cdlib.org/help/#publication) the OAC clarifies what users may do with materials they find through the Archive.[^OACHelp] The OAC alerts users to the fact that copyright may pertain to the Archive's materials and that it neither owns nor houses any of the listed materials. The OAC then refers users to the institution housing the relevant collection, noting that each collection guide contains a link to contact information at the top.   

While it is not an exclusively digital library, as it does not contain digital versions of everything it mentions or indexes, the OAC provides a profoundly useful service in offering a centralized access point to descriptions of collections throughout California. Beyond the time researchers save, this centralized repository vastly increases the likelihood that holdings in less prominent venues will be used by researchers from outside those locales. [My brother,](http://davidkentrandall.com/) a journalist currently writing a book on the history of Malibu, had to rely on Google searching in order to determine that Pepperdine University holds the main archives he has consulted thus far. When I sent him a link to the OAC, he seemed ecstatic, despite the fact that he has already submitted his initial drafts to his publisher. Although he and I both lived in California for more than 15 years, we had never heard of this resource, and he now lives in Brooklyn. As a distant researcher whose knowledge of Californian collections will be heavily mediated by online resources, this Archive already offers excellent utility, should he require further research for future edits or subsequence projects.  

[^about]: ["About OAC."](http://www.oac.cdlib.org/about/) *Online Archive of California.* California Digital Library. Web. 19 Sept. 2014.      
[^elsewhere]: Rinehart, Richard. ["Museums and the Online Archive of California."](http://firstmonday.org/ojs/index.php/fm/article/view/953/874) *First Monday* 7.5: 6 May 2002. Web. 18 Sept. 2014.   
[^CDLOAC]: ["Online Archive of California."](http://www.cdlib.org/services/access_publishing/dsc/oac/) California Digital Library. Web. 19 Sept 2014.   
[^OAC_DSC_folks]: ["Digital Special Collections."](http://www.cdlib.org/services/access_publishing/dsc/). California Digital Library. 13 Dec. 2013. Web. 19 Sept. 2014.  
[^Calisphere]: "Calisphere." California Digital Library. 22 Nov. 2013. Web. 19 Sept. 2014.    
[^OACHelp]: "Frequently Asked Questions." California Digital Library. Web. 19 Sept. 2014.   
[^CDLGDP]: "CDL Guidelines for Digital Objects." California Digital Library. Aug. 2011. Web. 19 Sept. 2014.   
[^OAChist]: ["OAC History."](http://www.cdlib.org/services/access_publishing/dsc/oac/history.html) California Digital Library. 20 May 2014. Web. 19 Sept. 2014.  
[^OACtech]: "Calisphere and OAC Technical Information." California Digital Library. 22 Nov. 2013. Web. 19 Sept. 2014.  
[^OAIPMH]: "OAI-PMH Data Service." California Digital Library. 20 Aug. 2013. Web. 19 Sept. 2014.   

