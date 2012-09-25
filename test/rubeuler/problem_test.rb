require "minitest_helper"
require "rubeuler"

describe Rubeuler::Problem do
  describe ".execute!" do
    it "returns a result" do
      Rubeuler::Problem.new(number: 1, answer: "0").execute!.must_be_kind_of(Rubeuler::Result)
    end

    it "produces an error if :number is not provided" do
      begin
        @problem = Rubeuler::Problem.new(answer: "0")
      rescue => e
        e.must_be_kind_of(RuntimeError)
      end
    end

    it "produces an error if :answer is not provided" do
      begin
        @problem = Rubeuler::Problem.new(number: 1)
      rescue => e
        e.must_be_kind_of(RuntimeError)
      end
    end

    it "complains if :answer is not a string" do
      begin
      Rubeuler::Problem.new(number: 1, answer: 0)
      rescue => e
        e.must_be_kind_of(TypeError)
      end
    end
  end
end
