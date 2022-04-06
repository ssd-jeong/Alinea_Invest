Clone Alinea Invest's Home Page

There were 3 sections to this project.
1. Your Wealth is Growing Header
2. Stack Category Section
3. News

Since all of the data for the first 2 sections was hardcoded, I resorted to hardcoding 
everything for those 2 sections in Section1.swift and Section2.swift, respectively. Going 
forward, if I was given data beforehand, or if I needed to get data from the internet and 
then pass it to a View, I would create models and Views like I did for section 3. I didn't 
feel like it was necessary this time because of the large amount of hardcoding I was already 
going to do.

For section 3, I created functions that asynchronously fetch the api data from FMP Articles.
To store the data, I created models called Article and NewsAPIResponse. I also provided a
View to display the data. All of this is contained with ArticleRowView.swift. 

To view the work, I recommend downloading the project and using XCode and its iPhone 
simulator to build the code. Please ignore all directories in main other than the one named
'Alinea Clone'. The other directories were created by default in XCode when starting the
project. All necessary files can be found within the 'Alinea Clone' directory.
