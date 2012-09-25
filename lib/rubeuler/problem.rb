require 'benchmark'

module Rubeuler
  include Solution

  class Problem < ::Rubeuler::Base
    def initialize(options)
      load_options(:number, :answer, options)
      raise TypeError, ':answer should be a string' unless @answer.is_a?(String)
    end

    def execute!
      time = Benchmark.measure { @data = answer }.real
      true_or_false = @data == solution ? true : false

      return Rubeuler::Result.new(success: true_or_false, problem: @number, data: @data, runtime: time)
    end

    private
    def answer
      instance_eval(@answer.gsub("\n",";"))
    end

    def solution
      Rubeuler::Solution.for_problem(@number)
    end
  end
end
