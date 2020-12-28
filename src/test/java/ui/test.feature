Feature: ui test

Scenario Outline: <type>
  * def webUrlBase = karate.properties['web.url.base']
  * configure driver = { type: '#(type)', showDriverLog: true, executable: "C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe" }

  * driver webUrlBase + '/page-01'
  * match text('#placeholder') == 'Before'
  * click('{}Click Me')
  * match text('#placeholder') == 'After'

Examples:
| type         |
| chrome       |
#| chromedriver |
#| geckodriver  |
#| safaridriver |
