# cucumber-websocket-example

An example of using Cucumber and Selenium to test WebSocket interactions between two users.

## Setup

1. `bundle install`
2. `rake`

## Notes

Firefox, the default browser for Selenium in Capybara, doesn't support WebSocket by default. Please ensure you have Flash installed in Firefox to allow [web-socket-js](https://github.com/gimite/web-socket-js) to function properly.

## Credits

* [Bernard Potocki](http://imanel.org/2010/03/cucumber-testing-for-multiple-users-continuation/)

## License

cucumber-websocket-example uses the MIT license. See LICENSE for more details.
