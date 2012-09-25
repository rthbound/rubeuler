Rubeuler
========

For Rubyists who enjoy solving and optimizing [Project Euler](http://www.projecteuler.net) problems. It uses `Benchmark` so be sure to use this with Ruby >= 1.9.3

Installation
------------

Rubeuler is a Ruby gem, and can be installed using `gem install rubeuler`

Usage
-----

The Rubeuler::Problem class should be initialized with two arguments, `:number` & `:answer` (problem designator and some ruby code as a string).
If the answer to problem one is 42, the code below should produce a successful response

```ruby
Rubeuler::Problem.new(number: 1, answer: "7*3*2").execute!
```
### Pull requests/issues

Please submit any useful pull requests through GitHub. I expect bugs, please report them with the issue tracker! Thanks.
