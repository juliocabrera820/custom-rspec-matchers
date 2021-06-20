# custom matcher built with PORO

module NumberMatcher
  class BePositive
    def matches?(actual)
      actual.positive?
    end

    def matches_when_negated?(actual)
      actual.negative?
    end

    def failure_message(_actual)
      "#{super()}, but had a negative number "
    end

    def failure_message_when_negated(_actual)
      "#{super()}, but had a positive number "
    end
  end
end
