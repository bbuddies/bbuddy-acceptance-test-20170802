When(/^add a budget of month "([^"]*)" with amount (\d+)$/) do |month, amount|
  touch('Budgets')
  touch('Add')
  clear_then_enter_text('month', month)
  clear_then_enter_text('amount', amount)
  touch('Save')
end

Then(/^list budgets as below$/) do |table|
  wait_for_text 'Dashboard'
  budget = table.hashes[0]
  wait_for_text budget['month']
  wait_for_text budget['amount']
end

Given(/^the original data is as below$/) do |table|
    touch('Budgets')
    touch('Add')
    budget = table.hashes[0]
    clear_then_enter_text('month', budget['month'])
    clear_then_enter_text('amount', budget['amount'])
    touch('Save')

    wait_for_text 'Dashboard'
   
    touch('Budgets')
    touch('Add')
    budget = table.hashes[0]
    clear_then_enter_text('month', budget['month'])
    clear_then_enter_text('amount', budget['amount'])
    touch('Save')
   
    wait_for_text 'Dashboard'
    budget = table.hashes[0]
    wait_for_text budget['month']
    wait_for_text budget['amount']
end
