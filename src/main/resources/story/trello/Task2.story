Description: 1.	Task2 HW2

Scenario: Sign in scenario
Given I am on the main application page
When I logged in

Scenario: Visual checks whole page
Given I am on a page with the URL 'https://trello.com/signup'
When I register new user 
When I wait until element located `By.xpath(//*[@id="password"])` appears
When I click on element located `By.xpath(//*[@id="email"])`

When I compare against baseline with `regPageView` ignoring:
|ELEMENT                   |
|By.xpath(//*[@id="email"])|

Scenario: Visual checks particular element 

When I change context to element located `By.xpath(//*[@alt="Trello Logo"])`
When I compare against baseline with `trelloLogo`
When I change context to element located `By.xpath(//*[@id="form-sign-up"])`