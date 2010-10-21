Then /^([^I]+) should see "([^"]*)"$/ do |name, text|
  in_session(name) do
    Then %{I should see "#{text}"}
  end
end

When /^I submit the new user form$/ do
  page.execute_script("document.getElementById('new_user').submit();")
end
