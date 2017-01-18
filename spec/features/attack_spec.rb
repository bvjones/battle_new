require 'spec_helper'

feature "Attack" do
  before do
    sign_in_and_play
    click_button "Attack"
  end
  scenario "attack reduces HP" do
    expect($player2.score).to eq(90)
  end
  scenario "I attack" do
    expect(page).to have_content "Ben attacked Kate! Well done!"
  end
end
