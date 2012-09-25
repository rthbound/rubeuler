require 'benchmark'

module Rubeuler
  include Solution

  class Problem < ::Rubeuler::Base
    def initialize(options)
      load_options(:number, :answer, options)
      raise TypeError, ':answer should be a string' unless @answer.is_a?(String)
      raise TypeError, ':number should be an integer' unless @number.is_a?(Fixnum)
    end

    def execute!
      time = timed_answer
      true_or_false = @data == solution ? true : false

      return Rubeuler::Result.new(success: true_or_false, problem: @number, data: data, runtime: time)
    end

    private
    def timed_answer
      timer_endpoints = ["Benchmark.measure { @data =", "}.real"]
      instance_eval(timer_endpoints.join(@answer.gsub("\n",";")))
    end

    def solution
      Rubeuler::Solution.for_problem(@number)
    end

    def data
      result_data = {
        solution: @data
      }
      @tracked.each { |k,v| result_data.merge!({ k => instance_eval(v.to_s) }) } if @tracked

      result_data
    end
  end
end
