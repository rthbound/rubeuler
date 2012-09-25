module Rubeuler
  class Base
    def load_option(option, options)
      instance_variable_set("@#{option}", options.fetch(option.to_sym) { raise "Missing required option: #{option}" } )
    end

    def load_options(*option_names, options)
      option_names.each{|o| load_option(o, options) }

      option_names << instance_variable_set("@tracked", options[:tracked]) if options[:tracked]
    end
  end
end
