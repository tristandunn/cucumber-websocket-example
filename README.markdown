# cucumber-websocket-example

An example of using Cucumber to test WebSocket interactions between two users.

## Setup

1. `bundle`
2. `rake`

## Notes

* Firefox, the default browser for Selenium in Capybara, doesn't support WebSocket by default. Please ensure you have Flash installed in Firefox to allow [web-socket-js](https://github.com/gimite/web-socket-js) to function properly.
* If you have the latest version of Qt you can use [capybara-webkit](https://github.com/thoughtbot/capybara-webkit) intead of Selenium. Which also means you can remove the need for the Flash fallback.

## Credits

* [Bernard Potocki](http://imanel.org/2010/03/cucumber-testing-for-multiple-users-continuation/)

## License

cucumber-websocket-example uses the MIT license. See LICENSE for more details.
