require './02_white_rabbit_rises'

describe FibSum do

  describe ".for" do
    {
      1 => 1,
      2 => 2,
      3 => 4,
      4 => 7,
      5 => 12,
      100 => 927372692193078999175,
    }.each do |num, result|
      it "should return with the correct result for #{num}" do
        expect(described_class.for(num)).to eql result
      end
    end
  end

end
