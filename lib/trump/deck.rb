module Trump
  class Deck
    attr_accessor :cards

    def initialize(joker_num=0)
      @cards = []
      4.times do |suit|
        13.times do |number|
          @cards << Trump::Card.new(suit + 1, number + 1)
        end
      end
      joker_num.times do
        @cards << Trump::Card.new(0, 0, 1)
      end
    end

    def suffle
      @cards.suffle!
    end

    def remain_num
      @cards.length
    end

    def pull
      return nil if @cards.empty?
      @cards.pop
    end
  end
end
