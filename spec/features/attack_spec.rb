require 'spec_helper'

feature "Attack" do
  scenario "I attack" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Ben attacked Kate! Well done!"    
  end
end
