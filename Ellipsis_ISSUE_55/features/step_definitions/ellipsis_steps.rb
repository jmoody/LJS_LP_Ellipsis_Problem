When /^I query a parent view that contains a subview with an ellipsis in the text, I should see an error$/ do
  query("view child view")
end

When /^I query a label with an ellipsis in the text, I should see an error$/ do
  query("view marked:'ellipsis label'")
end
