require 'rails_helper'

describe "signing up" do
  it "signs a user up with valid email and password." do
    visit 'signup'
    fill_in 'Name', :with => 'username'
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_button 'Create User'
    expect(page).to have_content 'Welcome to'
  end

  it "show an error with a blank name field." do
    visit 'signup'
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_button 'Create User'
    expect(page).to have_content "can't be blank"
  end

  it "show an error with a blank password and password confirmation field." do
    visit 'signup'
    fill_in 'Name', :with => 'username'
    fill_in 'Email', :with => 'user@example.com'
    click_button 'Create User'
    expect(page).to have_content "can't be blank"
  end

  it "show an error with a blank email field, but correct password and password confirmation field." do
    visit 'signup'
    fill_in 'Name', :with => 'username'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_button 'Create User'
    expect(page).to have_content "can't be blank"
  end
end
