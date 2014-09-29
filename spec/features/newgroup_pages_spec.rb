require 'rails_helper'

describe "new group form page" do

  it "should create a new tag if all the fields are filled in." do
    visit 'login'
    user = User.create(:name => 'username', :email => 'user@example.com', :password => 'password', :password_confirmation => 'password')
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log In'
    expect(page).to have_content "Welcome"
    click_link 'Create a new Category'
    expect(page).to have_content "Add a new Recipe Category"
    fill_in 'name', :with => 'category name'
    click_button 'Create Group'
    expect(page).to have_content 'Category:'
  end
end
