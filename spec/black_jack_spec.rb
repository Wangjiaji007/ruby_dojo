require 'spec_helper'
require 'black_jack'

describe BlackJack do
    jack = BlackJack.new

  it 'should calculate right result' do
    expect(jack.scoreHand(["A", "J"])).to equal 21
    expect(jack.scoreHand(["A", "10", "A"])).to equal 12
    expect(jack.scoreHand(["5", "3", "7"])).to equal 15
    expect(jack.scoreHand(["5", "4", "3", "2", "A", "K"])).to equal 25
    expect(jack.scoreHand(["A"])).to equal 11
  end
end