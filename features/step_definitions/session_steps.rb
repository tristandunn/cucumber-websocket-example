Given /^a user named "([^"]*)" is online$/ do |name|
  in_session(name) do
    Given %{I am on the homepage}
    When  %{I fill in "Name" with "#{name}"}
    And   %{I submit the new user form}

    wait_until(10) do
      page.evaluate_script("(function() { return window.socket && window.socket.readyState == 1; })();")
    end
  end
end
