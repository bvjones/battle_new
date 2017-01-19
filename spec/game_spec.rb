require 'game'

describe Game do
 let(:player1) {double :player}
 let(:player2) {double :player}
 subject(:game) { described_class.new(player1, player2) }


 describe '#player1' do
   it 'retrieves the first player' do
     expect(game.player1).to eq player1
   end
end

   describe '#player2' do
     it 'retrieves the second player' do
       expect(game.player2).to eq player2
     end
  end

    describe "#switch_attacker" do
       it 'attacked initializes with instance 0' do
          expect(game.next_attacker).to eq player2
       end

      it 'changes the attacker after each attack' do
        game.switch_attacker
        expect(game.next_attacker).to eq player1
      end
    end

end
