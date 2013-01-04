Given /^a user named "([^"]*)" is online$/ do |name|
  using_session(name) do
    step %{I am on the homepage}
    step %{I fill in "Name" with "#{name}"}
    step %{I submit the new user form}

    Timeout::timeout(10) do
      sleep(0.05) until page.evaluate_script("window.socket && window.socket.readyState == 1;")
    end
  end
end
