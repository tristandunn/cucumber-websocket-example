# cucumber-websocket-example [![Build Status](https://secure.travis-ci.org/tristandunn/cucumber-websocket-example.png?branch=master)](http://travis-ci.org/tristandunn/cucumber-websocket-example) [![Dependency Status](https://gemnasium.com/tristandunn/cucumber-websocket-example.png)](https://gemnasium.com/tristandunn/cucumber-websocket-example)

An example of using Cucumber to test WebSocket interactions between two users.

## Notes

* If you're using [Pusher](http://pusher.com), check out [pusher-fake-example](https://github.com/tristandunn/pusher-fake-example) which utilizes [pusher-fake](https://github.com/tristandunn/pusher-fake) to avoid hitting the service.
* The [capybara-webkit](https://github.com/thoughtbot/capybara-webkit) driver is used instead of Selenium. If you'd like a different driver, edit `features/support/capybara.rb`.

## Credits

* Original idea by [Bernard Potocki](http://imanel.org/blog/2010/03/cucumber-testing-for-multiple-users-continuation/) in 2010.
* [Added to Capybara](https://github.com/jnicklas/capybara/commits?author=tristandunn) in January 2011.

## License

cucumber-websocket-example uses the MIT license. See LICENSE for more details.
