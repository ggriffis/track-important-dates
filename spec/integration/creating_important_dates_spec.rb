require 'spec_helper'
feature 'Creating Important Dates' do
  scenario "can create an important date" do
    visit '/'
    click_link 'New Important Date'
    fill_in 'Name', :with => 'My Birthday'
    fill_in 'Description', :with => "The day I was born"
    select Date.today.year.to_s, from: 'important_date_date_of_importance_1i'
    select Date::MONTHNAMES[Date.today.month], from: 'important_date_date_of_importance_2i'
    select Date.today.day.to_s, from: 'important_date_date_of_importance_3i'
    click_button 'Create Important date'
    page.should have_content('Important Date has been created')
  end
end
