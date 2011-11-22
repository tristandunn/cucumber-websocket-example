Given /^a user named "([^"]*)" is online$/ do |name|
  using_session(name) do
    step %{I am on the homepage}
    step %{I fill in "Name" with "#{name}"}
    step %{I submit the new user form}

    wait_until(10) do
      page.evaluate_script("(function() { return window.socket && window.socket.readyState == 1; })();")
    end
  end
end
