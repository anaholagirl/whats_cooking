describe "new tag form page" do

  it "should create a new tag if all the fields are filled in." do
    visit 'login'
    user = User.create(:name => 'username', :email => 'user@example.com', :password => 'password', :password_confirmation => 'password')
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log In'
    expect(page).to have_content "Welcome"
    click_link 'Create a new Recipe'
    expect(page).to have_content "Add a new Recipe"
    fill_in 'name', :with => 'recipe name'
    fill_in 'ingredients', :with => 'ingredients'
    fill_in 'instructions', :with => 'instructions'
    click_button 'Create Recipe'
    expect(page).to have_content 'recipe has been added'
    click_link 'Tag this recipe to a Category'
    expect(page).to have_content "Add this Recipe to a Category:"
    select("option you want to select from menu", :from => :group_id)
    click_button 'Create Tag'
    expect(page).to have_content 'Categories and the Recipes under them:'
  end
end
