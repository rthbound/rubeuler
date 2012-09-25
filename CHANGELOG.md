0.0.1 - Initial release, allows you to initialize an instance of Rubeuler::Problem with required options `:number` (int) and `:answer` (string of ruby code). Answer is evaluated and compared to answer predefined in Rubeuler::Problem#solutions method.   Result is returned indicating success/failure and the time elapsed when running the code in `:answer`

0.0.2 - Fixed Rakefile (gave myself the ability to use `rake release`); Updated description in gemspec

0.0.3 - Moved Rubeuler::Problem#solutions to Rubeuler::Solution#for_problem to make the intended use more intuitive

0.0.4 - Add tests using minitest

0.0.5 - Feature: Track other variables... the options `tracked: {foo: @foo}` would track a variable set as `@foo` in Rubeuler::Problem's `:answer` argument
				Improve on tests, improve timer by moving Benchmark closer to code being evaluated

0.0.6 - Reverting the change to the Benchmark implementation from 0.0.5
        
