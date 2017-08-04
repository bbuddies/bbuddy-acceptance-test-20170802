When(/^add a budget of month "([^"]*)" with amount (\d+)$/) do |month, amount|
  touch('Budgets')
  touch('Add')
  clear_then_enter_text('time', month)
  clear_then_enter_text('amount', amount)
  touch('Save')
end

Then(/^list budgets as below$/) do |table|
  wait_for_text_does_not_exist 'Save'
  budget = table.hashes[0]
  wait_for_text budget['time']
  wait_for_text budget['amount']
end

Given(/^the original data is as below$/) do |table|
    touch('Budgets')
    touch('Add')
    budget = table.hashes[0]
    clear_then_enter_text('time', budget['month'])
    clear_then_enter_text('amount', budget['amount'])
    touch('Save')
end


When(/^query the budget from (\d+)\-(\d+)\-(\d+) to (\d+)\-(\d+)\-(\d+)$/) do |startYear, startMonth, startDay, endYear, endMonth, endDay|
    
   
end

Then(/^budgets is (\d+)$/) do |amount|
   
   
end
