require 'spec_helper'


feature "Attack" do

  before do
    sign_in_and_play
    click_button "Attack"
  end
  scenario "attack reduces Player2 HP" do
    expect($game.player2.score).to eq(90)
  end
  scenario "attack reduces Player1 HP" do
    click_button "Attack"
    expect($game.player1.score).to eq(90)
  end
end
