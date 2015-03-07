require 'rails_helper'

describe "new recipe form page" do

  it "should create a new recipe if all the fields are filled in." do
    visit 'login'
    user = User.create(:name => 'username', :email => 'user@example.com', :password => 'password', :password_confirmation => 'password')
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log In'
    expect(page).to have_content "Logged in as"
    click_link 'Create a New Recipe'
    expect(page).to have_content "Add a new Recipe"
    fill_in 'Name', :with => 'recipe name'
    fill_in 'Ingredients', :with => 'ingredients'
    fill_in 'Instructions', :with => 'instructions'
    click_button 'Create Recipe'
    expect(page).to have_content 'Your recipe has been added to the Cookbook'
  end
end
