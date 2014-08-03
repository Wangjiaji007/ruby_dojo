require 'spec_helper'
require 'roman'

describe Roman do

  it 'should pass all tests' do
    test = Roman.new

    expect(test.encode 1234 ).to eq 'MCCXXXIV'
    expect(test.encode 2014 ).to eq 'MMXIV'

  end
end