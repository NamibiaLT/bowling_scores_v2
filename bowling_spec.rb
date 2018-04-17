require 'rspec'
require_relative './bowling'

describe 'bowling' do
  it 'adds up all the rolls' do
    expect(Bowling.score([3, 6])).to eq(9)
  end

  it 'returns the total score with a gutter ball' do
    expect(Bowling.score([8,'-'])).to eq(8)
  end

  it 'returns the score when you get a spare' do
    expect(Bowling.score([4, '/', 6, 1])).to eq(23)
  end

  it 'returns the score when you get a strike' do
    expect(Bowling.score(['*', 5, 2])).to eq(24)
  end
end
