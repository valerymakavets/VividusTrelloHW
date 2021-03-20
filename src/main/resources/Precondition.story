Scenario: ‘Sign Up’ scenario 

Given I am on a page with the URL 'https://trello.com/signup'
When I register new user
When I wait until element located `By.xpath(//*[@id="password"])` appears
When I click on element located `By.xpath(//*[@id="displayName"])`
When I enter `<fullName>` in field located `By.xpath(//*[@id="displayName"])`
When I click on element located `By.xpath(//*[@id="password"])`
When I enter `<password>` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//button[@type="submit"])`

Examples:
|fullName                                              |password                                |
|#{generate(Name.firstName)} #{generate(Name.lastName)}|#{generate(regexify '[a-z]{5}[A-Z]{2}')}|
