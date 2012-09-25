module Rubeuler
  class Result
    def initialize(options)
      @success = options[:success]
      @data = options[:data]
      @runtime = options[:runtime]
    end
  end
end
