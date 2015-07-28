require_relative 'spec_helper'
require_relative '../../lib/code.rb'

RSpec.describe Car, '#initialize' do
  context 'context' do
    it 'it' do
      expect(10).to eq 10
    end
  end
end

RSpec.describe 'concatenation_operator' do
  it 'Concatenation_operator should concatenate two string' do
    result = concatenation_operator '1', '2'
    expect(result).to eq '12'
  end
  it 'Concatenation_operator with 1 argument should raise ArgumentError' do
    expect { concatenation_operator '1' }.to raise_error(ArgumentError)
  end
end

RSpec.describe 'input' do
  it 'should print hej' do
    expect(STDOUT).to receive(:puts).with('input')
    allow(STDIN).to receive(:gets).and_return('hej')
    input
  end
end

RSpec.describe 'description' do
  context 'context1' do
    it 'it1' do
      expect(10).to eq 10
    end
    it 'it2' do
      expect(10).to eq 10
    end
  end

  context 'context2' do
    it 'it1' do
      expect(10).to eq 10
    end
    it 'it2' do
      expect(10).to eq 10
    end
  end
end

RSpec.describe 'Splatty' do
  it 'should splat' do
    # Array of words
    array = %w(David Jackie)
    expect(STDOUT).to receive(:puts).with('Hej David')
    expect(STDOUT).to receive(:puts).with('Hej Jackie')
    splatty 'Hej',  *array
  end
end
