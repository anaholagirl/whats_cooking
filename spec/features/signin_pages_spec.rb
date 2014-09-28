require 'rails_helper'

describe "signing in" do
  it "signs a user in if password correct" do
    visit 'login'
    user = User.create(:name => 'username', :email => 'user@example.com', :password => 'password', :password_confirmation => 'password')
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log In'
    expect(page).to have_content 'Logged in'
  end
end
