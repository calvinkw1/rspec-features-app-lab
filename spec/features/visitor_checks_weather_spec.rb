require "rails_helper"

feature "Visitor checks the weather" do
  scenario "sunny" do
    # setup
    visit root_path
    
    # exercise
    fill_in "What's your zip code?", with: "94104" # string is case sensitive
    click_button "Is it going to rain?" # string is case sensitive

    #verify
    expect(page).to have_content("Sun's gonna be shining!") # string is case sensitive
    expect(page).to have_content("No umbrella needed.") # string is case sensitive
  end

  scenario "raining" do

  end
end