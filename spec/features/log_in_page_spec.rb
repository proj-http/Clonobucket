require 'rails_helper'

describe "the log in process" do

  it "will log in a user if their password and username are correct" do
    user = User.create(:username => "Harold", :password => "12345")
    visit root_path
    click_on "Log In"
    fill_in "Username", :with => "Harold"
    fill_in "Password", :with => "12345"
    click_on "Log in"
    expect(page).to have_content "logged"
  end

  it "will give an error if nonexistent user info is given" do
    visit root_path
    click_on "Log In"
    fill_in "Username", :with => "FFFFFFF"
    fill_in "Password", :with => "98989898"
    click_on "Log in"
    expect(page).to have_content "problem"
  end

  it "will give an error if user password is not given" do
    user = User.create(:username => "Harold", :password => "12345")
    visit root_path
    click_on "Log In"
    fill_in "Username", :with => "Harold"
    click_on "Log in"
    expect(page).to have_content "problem"
  end

  it "will give an error if username is not given" do
    user = User.create(:username => "Harold", :password => "12345")
    visit root_path
    click_on "Log In"
    fill_in "Password", :with => "12345"
    click_on "Log in"
    expect(page).to have_content "problem"
  end

  it "will give an error if no user info is given" do
    user = User.create(:username => "Harold", :password => "12345")
    visit root_path
    click_on "Log In"
    click_on "Log in"
    expect(page).to have_content "problem"
  end
end

describe "the log out process" do

  it "will log a user out" do
    user = User.create(:username => "Harold", :password => "12345")
    visit root_path
    click_on "Log In"
    fill_in "Username", :with => "Harold"
    fill_in "Password", :with => "12345"
    click_on "Log in"
    click_on "Log Out"
    expect(page).to have_content "You've been logged out."
  end
end
