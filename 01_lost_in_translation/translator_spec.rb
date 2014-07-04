require './01_lost_in_translation'

describe Translator do

  let(:message) { "Hello Guys" }
  let(:result)  { "Funny Cats" }
  subject { described_class.new(message, result) }

  it "should create a map" do
    expect(subject.map).to eql({
      "H" => "F",
      "e" => "u",
      "l" => "n",
      "o" => "y",
      " " => " ",
      "G" => "C",
      "u" => "a",
      "y" => "t",
      "s" => "s",
    })
  end

  describe "#translate" do
    {
      "Hello" => "Funny",
      "Guys"  => "Cats",
      "Gely"  => "Cunt",
    }.each do |from, to|
      it "should translate #{from} to #{to}" do
        expect(subject.translate(from)).to eq to
      end
    end
  end

end
