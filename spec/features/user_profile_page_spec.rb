require 'rails_helper'

describe "the view user profile process" do
  it "will display a user's profile" do
    user = User.create(:username => "Harold", :password => "12345")
    visit root_path
    visit user_path(user)
    expect(page).to have_content "Harold's profile"
  end
end
