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
      "#{super()}#{failure_reason('negative')}"
    end

    def failure_message_when_negated(_actual)
      "#{super()}#{failure_reason('positive')}"
    end

    private

    def failure_reason(number_type)
      ", but had a #{number_type} number"
    end
  end
end
