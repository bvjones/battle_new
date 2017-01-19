require 'game'

describe Game do
 let(:player1) {double :player}
 let(:player2) {double :player}
 subject(:game) { described_class.new(player1, player2) }


 describe '#player1'
   it 'retrieves the first player' do
     expect(game.player1).to eq player1
   end

   describe '#player2'
     it 'retrieves the second player' do
       expect(game.player2).to eq player2
     end

end
