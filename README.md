Rubeuler
========
![Leonhard Euler](http://upload.wikimedia.org/wikipedia/commons/c/cc/Euler%27s_signature.png)

[![Gem Version](https://badge.fury.io/rb/Rubeuler.png)](http://badge.fury.io/rb/Rubeuler)[![Build Status](https://travis-ci.org/rthbound/rubeuler.png?branch=master)](https://travis-ci.org/rthbound/rubeuler) [![Coverage Status](https://coveralls.io/repos/rthbound/rubeuler/badge.png?branch=master)](https://coveralls.io/r/rthbound/rubeuler?branch=master)[![Code Climate](https://codeclimate.com/github/rthbound/rubeuler.png)](https://codeclimate.com/github/rthbound/rubeuler)


For Rubyists who enjoy solving and optimizing [Project Euler](http://www.projecteuler.net) problems. It uses `Benchmark` so be sure to use this with Ruby >= 1.9.3

Installation
------------

Rubeuler is a Ruby gem, and can be installed using `gem install Rubeuler`

Usage
-----

The Rubeuler::Problem class should be initialized with two arguments, `:number` & `:answer` (problem designator and some ruby code as a string).
If the answer to problem one is 42, the code below should produce a successful response

```ruby
Rubeuler::Problem.new(number: 1, answer: "7*3*2").execute!
```

Extra options (just one right now):
```ruby
    answer = "@loop_count = 0; 1001.times do; @loop_count += 1; end; result = 42"

		# Use :tracked option to track extra variables included in your algorithm
    Rubeuler::Problem.new(number: 1, answer: answer, tracked: {loop_count: "@loop_count"}).execute!
    => #<Rubeuler::Result:0x007fef81c221f8
      @data={:solution=>42, :loop_count=>1001},
      @runtime=0.0002689361572265625,
      @success=true>
```

__NOTE__: Solutions (see Rubeuler::Solution) are not provided for you. Successfully solve some ProjectEuler problems to build your own list, then use Rubeuler to judge the quality of your solutions.
__NOTE__: The last expression in the `:answer` argument will be compared to solution predefined in `Rubeuler::Solution` for that problem number.

### Pull requests/issues

Please submit any pull requests through GitHub. Please report any problems with the issue tracker! Thanks.
