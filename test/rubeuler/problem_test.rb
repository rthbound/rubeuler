require "minitest_helper"

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
        error = e
      end
      error.must_be_kind_of(TypeError)
    end

    it "complains if :number is not an integer" do
      begin
        Rubeuler::Problem.new(number: :the_letter_a, answer: "0")
      rescue => e
        error = e
      end
      error.must_be_kind_of(TypeError)
    end
  end

  describe "#data" do
    it "can track extra instance_variables" do
      res = Rubeuler::Problem.new(number: 1, answer: "@foo, @baz = :bar, :bang; 111*0", tracked: {foo: "@foo", baz: "@bang"}).execute!
      res.must_be_kind_of(Rubeuler::Result)
      res.data.keys.include?(:foo).must_equal(true)
      res.data.keys.include?(:baz).must_equal(true)
    end
  end
end
