require 'spec_helper'
require_relative './../src/number'

RSpec.describe Number do
  it 'returns a number multiple of 2' do
    expect(6).to be_a_multiple_of(2)
  end

  it 'returns a positive number' do
    expect(1).to be_positive
  end

  it 'returns a negative number' do
    expect(-2).not_to be_positive
  end
end
