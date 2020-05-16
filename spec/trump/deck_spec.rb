require "spec_helper"

RSpec.describe Trump::Deck do
  let(:joker_num) { 0 }
  let(:trump) { Trump::Deck.new(joker_num) }

  describe "#initialize" do
    subject { trump.remain_num }
    context "when joker none" do
      it { is_expected.to eq 52 }
    end

    context "when 2 joker" do
      let(:joker_num) { 2 }
      it { is_expected.to eq 54 }
    end
  end

  describe "#pull" do
    let(:trump) { Trump::Deck.new }
    subject { trump.pull }
    context "when card is not empty" do
      it { is_expected.to be_an_instance_of Trump::Card }
    end

    context "when card is empty" do
      before { 52.times { trump.pull } }
      it { is_expected.to be_nil }
    end
  end
end
