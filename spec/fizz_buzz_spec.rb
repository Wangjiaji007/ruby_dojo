require 'spec_helper'
require 'fizz_buzz'

describe FizzBuzz do


  context '#judge_number'
  it 'should return fizz when the number above 0' do
    FizzBuzz.new.judge_number(2).should == 'fizz'
  end

  it 'should return error when the number under 0' do
    FizzBuzz.new.judge_number(-1).should == 'error'
  end

  it 'should return buzz when the number is divided by 3' do
    FizzBuzz.new.judge_number(3).should == 'buzz'
  end

  it 'should return fizzbuzz when the number is divided by 3 and divided by 5' do
    FizzBuzz.new.judge_number(15).should == 'fizzbuzz'
  end

  it "should return error when it is -3 " do
    FizzBuzz.new.judge_number(-3).should == 'error'
  end
end