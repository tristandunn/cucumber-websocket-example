module Capybara
  module Driver
    module SeleniumSessions
      def set_selenium_session(id)
        Capybara.instance_variable_set('@session_pool', {
         "#{Capybara.current_driver}#{Capybara.app.object_id}" => $sessions[id]
        })
      end

      def in_session(id, &block)
        $sessions ||= {}
        $sessions[:default] ||= Capybara.current_session
        $sessions[id]       ||= Capybara::Session.new(:selenium, Capybara.app)

        set_selenium_session(id)
        yield
        set_selenium_session(:default)
      end
    end
  end
end

World(Capybara::Driver::SeleniumSessions)
