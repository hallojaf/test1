def assert_equals actual, expected
  puts actual == expected || raise("expected: #{expected}, got #{actual}")
end

def assert_change subject, change_by, changer
  before = subject.call
  changer.call
  assert_equals subject.call, before+change_by
end

class Awesome
  attr_reader :sweetness
  def initialize
    @sweetness = 0
  end

  def sweeten_me_up!
    @sweetness += 1
    true
  end
end

awesome = Awesome.new
assert_change -> { awesome.sweetness }, 1, ->{ awesome.sweeten_me_up! }
