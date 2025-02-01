# FetchTask

### Summary: 


### Focus Areas: 
I prioritized building the UI, as SwiftUI is a new technology I am very eager to learn and continue practicing.
Second level was Responsability separation, keeping views only for views, models only to describe data and viewmodels for implementations.
Finally testing was focused on view model and models, making sure the data is read and protocols are implemented.

### Time Spent: 
This project took aproximately 4 hours. 
- 1 hour spent on building the UI
- 2 hours implementing JSONDecode with async/await 
- 1 hour writing unit tests. Today I learned you can not access files form the Bundle.main if they are in the test target, as they are not copied, I had to move them to the main target and use testable import. 

### Trade-offs and Decisions: 
Main tradeoff was image caching. I belive AsyncImage does everything it was requested, instead of having to implement everything by hand. 

### Weakest Part of the Project: 
I belive there could be more testing implemented, it is a small project, so only three scenarios were tested, the complete response, the malformed response and the empty response. 
I also think I should have prepared the project for navigation. Data is there for a new view to be presented and to load a description, another image and, if available, the youtube video to watch preparation. 

### Additional Information: 
Left a comment on RecipeInfoCell.swift, where you can exchange the implementation of the images form a CachingHelper vs AsyncImage. 
