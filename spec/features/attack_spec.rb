require 'spec_helper'


feature "Attack" do

  before do
    sign_in_and_play
    click_button "Attack"
  end
  scenario "attack reduces HP" do
    expect($game.player2.score).to eq(90)
  end
end
