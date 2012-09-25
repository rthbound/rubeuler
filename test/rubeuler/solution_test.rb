require "minitest_helper"

describe Rubeuler::Problem do
  describe ".execute!" do
    it "returns a solution if predefined" do
      Rubeuler::Solution.for_problem(1).must_be_kind_of(Numeric)
    end

    it "produces an error if key for the problem specified is not defined" do
      begin
        @problem = Rubeuler::Solution.for_problem(:orange)
      rescue => e
        e.must_be_kind_of(RuntimeError)
      end
    end

  end
end
