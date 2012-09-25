require 'benchmark'

module Rubeuler
  class Problem < ::Rubeuler::Base
    def initialize(options)
      load_options(:number, :answer, options)
    end

    def execute!
      time = Benchmark.measure { @data = answer }.real
      true_or_false = @data == solutions[@number.to_s] ? true : false

      return Rubeuler::Result.new(success: true_or_false, problem: @number, data: @data, runtime: time)
    end

    private
    def answer
      instance_eval(@answer.gsub("\n",";"))
    end

    def solutions
      {
        "1" => 0,
        "2" => 0,
        "3" => 0,
        "4" => 0,
        "5" => 0,
        "6" => 0,
        "7" => 0
      }
    end
  end
end
