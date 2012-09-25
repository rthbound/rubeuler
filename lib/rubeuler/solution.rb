module Rubeuler
  module Solution
    def self.for_problem number
      {
        "1" => 0,
        "2" => 0,
        "3" => 0,
        "4" => 0,
        "5" => 0,
        "6" => 0,
        "7" => 0
      }.fetch(number.to_s) { raise RuntimeError.new("Undefined solution for problem: #{number.to_s}") }
    end
  end
end
