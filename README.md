Design patterns in ruby as taken from Russ Olsen's "Design Patterns in Ruby"

**Setup**

create ~/.irbc file with content below to have irb console load all ruby files

```
#!/usr/bin/env ruby
# -*- ruby -*-

puts "IRB Config Loading..."

# add any requires you like
require 'awesome_print'

# load any files called .irbrc in the current directory from which IRB is initialised
file = File.expand_path("#{Dir.pwd}/.irbrc")
if File.exist?(file) && (file != __FILE__)
  puts "loading #{file}"
  load file
end

```

**Testing**

Uses minitest with a rake task to run, as below:

```
rake test
```

**TODO**

  - [] run scripts for all pattern examples
  - [] test all pattern examples
