When(/^add a budget of month "([^"]*)" with amount (\d+)$/) do |month, amount|
  touch('Budgets')
  touch('Add')
  clear_then_enter_text('month', month)
  clear_then_enter_text('amount', amount)
  touch('Save')
end

Then(/^list budgets as below$/) do |table|
end