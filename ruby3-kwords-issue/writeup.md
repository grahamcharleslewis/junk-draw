```ruby
class Task
  attr_reader :id, :status, :started, :ended

  def initialize(id:, status:, started:, ended:)
    @id = id
    @status = status 
    @started = started 
    @ended = ended 
  end
end
```

```ruby
RSpec.describe Task, "#initialize" do
  context "with keyword args" do
    it "works!" do
      task = Task.new(1234, "active", true, false)
      expect(task.id).to eq 1234
    end
  end
end
```

Results in the following error...

```shell
gcl@penguin$ bin/rspec ./spec/task_spec.rb
F

Failures:

  1) Task#initialize with keyword args works!
     Failure/Error: task = Task.new(1234, "active", true, false)
     
     ArgumentError:
       wrong number of arguments (given 4, expected 0; required keywords: id, status, started, ended)
     # ./task.rb:4:in `initialize'
     # ./spec/task_spec.rb:6:in `new'
     # ./spec/task_spec.rb:6:in `block (3 levels) in <top (required)>'

Finished in 0.00381 seconds (files took 0.09739 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./spec/task_spec.rb:5 # Task#initialize with keyword args works!
```

I think the simplest solution is to make the class args positional by just removing the full colons (`:`) on the method arguements...

```ruby
class Task
  attr_reader :id, :status, :started, :ended

  def initialize(id, status, started, ended)
    @id = id
    @status = status 
    @started = started 
    @ended = ended 
  end
end
```

Spec remains the same - and we get this...

```shell
gcl@penguin$ bin/rspec ./spec/task_spec.rb
.

Finished in 0.00503 seconds (files took 0.1201 seconds to load)
1 example, 0 failures
```

And `rubocop` is still happy...

```shell
gcl@penguin$ rubocop
Inspecting 2 files
..

2 files inspected, no offenses detected
```