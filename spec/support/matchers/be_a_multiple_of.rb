# custom matcher built with matcher DSL

module NumberMatcher
  RSpec::Matchers.define :be_a_multiple_of do |expected|
    match { |actual| actual % expected == 0 }

    # TODO: implement expec().not_to
    match_when_negated { |actual| actual % expected == 0 }

    failure_message { |_actual| "#{super()}#{failure_reason}" }

    failure_message_when_negated { |_actual| "#{super()}#{failure_reason}" }

    private

    def failure_reason
      ', but had a different value'
    end
  end
end
