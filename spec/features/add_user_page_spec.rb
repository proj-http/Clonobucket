require 'rails_helper'



describe "the add new user process" do
  it "adds a new user" do
    visit root_path
    click_on "New User"
    fill_in "Username", :with => "Sebastian"
    fill_in "Password", :with => "12345"
    fill_in "Password confirmation", :with => "12345"
    click_on "Sign Up"
    expect(page).to have_content "Congrats"
  end

  it "gives an error when no username is present" do
    visit root_path
    click_on "New User"
    fill_in "Password", :with => "12345"
    fill_in "Password confirmation", :with => "12345"
    click_on "Sign Up"
    expect(page).to have_content "problem"
  end

  it "gives an error if the passwords don't match" do
    visit root_path
    click_on "New User"
    fill_in "Username", :with => "Sebastian"
    fill_in "Password", :with => "12345"
    fill_in "Password confirmation", :with => "12355"
    click_on "Sign Up"
    expect(page).to have_content "problem"
  end

  it "gives an error if there is no password" do
    visit root_path
    click_on "New User"
    fill_in "Username", :with => "Sebastian"
    click_on "Sign Up"
    expect(page).to have_content "problem"
  end


end
