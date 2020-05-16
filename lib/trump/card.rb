module Trump
  class Card
    attr_accessor :suit, :number, :joker
    def initialize(suit, number, joker=0)
      @suit = suit
      @number = number
      @joker = joker
    end

    def heart?
      @suit == 1
    end

    def spade?
      @suit == 2
    end

    def clover?
      @suit == 3
    end

    def dia?
      @suit == 4
    end

    def ace?
      @number == 1
    end

    def jack?
      @number == 11
    end

    def queen?
      @number == 12
    end

    def king?
      @number == 13
    end

    def pip_card?
      @number <= 10 && !joker?
    end

    def coat_card?
      @number > 10
    end

    def joker?
      @joker != 0
    end
  end
end
