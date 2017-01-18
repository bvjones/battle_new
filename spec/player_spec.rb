require 'player.rb'

describe Player do
  subject(:dave) { Player.new('Dave')}
  describe "name" do
    it 'returns name' do
      expect(dave.name).to eq "Dave"
    end
  end
  it 'creates an instance of the player class' do
    expect(subject).to be_a(Player)
  end
end
