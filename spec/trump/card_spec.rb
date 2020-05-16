require "spec_helper"

RSpec.describe Trump::Deck do
  let(:card) { Trump::Card.new(suit, number) }

  context "when ace of heart" do
    let(:suit) { 1 }
    let(:number) { 1 }
    it { expect(card.heart?).to eq true }
    it { expect(card.spade?).to eq false }
    it { expect(card.clover?).to eq false }
    it { expect(card.dia?).to eq false }
    it { expect(card.ace?).to eq true }
    it { expect(card.jack?).to eq false }
    it { expect(card.queen?).to eq false }
    it { expect(card.king?).to eq false }
    it { expect(card.pip_card?).to eq true }
    it { expect(card.coat_card?).to eq false }
    it { expect(card.joker?).to eq false }
  end

  context "when jack of spade" do
    let(:suit) { 2 }
    let(:number) { 11 }
    it { expect(card.heart?).to eq false }
    it { expect(card.spade?).to eq true }
    it { expect(card.clover?).to eq false }
    it { expect(card.dia?).to eq false }
    it { expect(card.ace?).to eq false }
    it { expect(card.jack?).to eq true }
    it { expect(card.queen?).to eq false }
    it { expect(card.king?).to eq false }
    it { expect(card.pip_card?).to eq false }
    it { expect(card.coat_card?).to eq true }
    it { expect(card.joker?).to eq false }
  end

  context "when queen of clover" do
    let(:suit) { 3 }
    let(:number) { 12 }
    it { expect(card.heart?).to eq false }
    it { expect(card.spade?).to eq false }
    it { expect(card.clover?).to eq true }
    it { expect(card.dia?).to eq false }
    it { expect(card.ace?).to eq false }
    it { expect(card.jack?).to eq false }
    it { expect(card.queen?).to eq true }
    it { expect(card.king?).to eq false }
    it { expect(card.pip_card?).to eq false }
    it { expect(card.coat_card?).to eq true }
    it { expect(card.joker?).to eq false }
  end

  context "when king of dia" do
    let(:suit) { 4 }
    let(:number) { 13 }
    it { expect(card.heart?).to eq false }
    it { expect(card.spade?).to eq false }
    it { expect(card.clover?).to eq false }
    it { expect(card.dia?).to eq true }
    it { expect(card.ace?).to eq false }
    it { expect(card.jack?).to eq false }
    it { expect(card.queen?).to eq false }
    it { expect(card.king?).to eq true }
    it { expect(card.pip_card?).to eq false }
    it { expect(card.coat_card?).to eq true }
    it { expect(card.joker?).to eq false }
  end

  context "when joker" do
    let(:card) { Trump::Card.new(0, 0, 1) }
    it { expect(card.heart?).to eq false }
    it { expect(card.spade?).to eq false }
    it { expect(card.clover?).to eq false }
    it { expect(card.dia?).to eq false }
    it { expect(card.ace?).to eq false }
    it { expect(card.jack?).to eq false }
    it { expect(card.queen?).to eq false }
    it { expect(card.king?).to eq false }
    it { expect(card.pip_card?).to eq false }
    it { expect(card.coat_card?).to eq false }
    it { expect(card.joker?).to eq true }
  end
end
