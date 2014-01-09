# see link_examples.md

When (/^(?:|I )follow "([^"]*)"$/) do |link|
  click_link(link)
end

When(/^I click "(.*?)" within "(.*?)"$/) do |link, scope_selector|
  page.should have_css(scope_selector)
  within(scope_selector) do
    click_link(link)
  end
end

When(/^I click the "(.*?)" within (\d+)(?:st|nd|rd|th) (.*?)$/) do |field, position, class_element|
  scope_selector = "class_element:nth-child(#{position})"
  step %{I click "#{field}" within "#{scope_selector}"}
end

