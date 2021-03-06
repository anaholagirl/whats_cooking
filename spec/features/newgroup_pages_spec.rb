require 'rails_helper'

describe "new group form page" do

  it "should create a new group if all the fields are filled in." do
    visit 'login'
    user = User.create(:name => 'username', :email => 'user@example.com', :password => 'password', :password_confirmation => 'password')
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log In'
    expect(page).to have_content 'Logged in as'
    click_link 'My Recipe Book'
    expect(page).to have_content 'My Recipe Book'
    click_link 'Create a new Category'
    expect(page).to have_content "Add a new Recipe Category"
    fill_in 'Name', :with => 'category name'
    click_button 'Create Group'
    expect(page).to have_content 'New Category has been created in the Cookbook'
  end
end
