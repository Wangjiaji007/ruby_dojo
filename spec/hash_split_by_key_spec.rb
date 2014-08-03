require 'spec_helper'
require 'hash_split_by_key'

describe HashSplitByKey do

  it 'should pass all tests' do
    test = HashSplitByKey.new

    expect{test.split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, 'b' )}
    .to raise_error

    expect(test.split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, :c, :e ))
                    .to eq [ {:a=>1, :b=>2}, {:c=>3, :d=>4}, {:e=>5, :f=>6} ]

    expect(test.split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, :b, :f ))
                    .to eq [ {:a=>1}, {:b=>2, :c=>3, :d=>4, :e=>5}, {:f=>6} ]

    expect(test.split_hash_by_key( { 'a'=>1, 'b'=>2, 'c'=>3, 'd'=>4, 'e'=>5, 'f'=>6 }, 'd' ))
                    .to eq [ {"a"=>1, "b"=>2, "c"=>3}, {"d"=>4, "e"=>5, "f"=>6} ]

    expect(test.split_hash_by_key( {:a => 1, :b => 2}, :a ))
                    .to eq [ {:a => 1, :b => 2} ]
  end
end