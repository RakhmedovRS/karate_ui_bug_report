Feature: ui test

Scenario Outline: <type>
  * def webUrlBase = 'https://yandex.ru'
  * configure driver = { type: '#(type)', showDriverLog: true }

  * driver webUrlBase
  * driver.quit()

Examples:
| type         |
| chrome       |
#| chromedriver |
#| geckodriver  |
#| safaridriver |
