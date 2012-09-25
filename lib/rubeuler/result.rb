module Rubeuler
  class Result
    def initialize(options)
      @success = options[:success]
      @data = options[:data]
      @runtime = options[:runtime]
    end

    def data
      @data
    end

    def runtime
      @runtime
    end

    def successful?
      !!@success
    end
  end
end
