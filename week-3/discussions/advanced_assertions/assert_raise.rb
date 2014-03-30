def assert_equals actual, expected
  puts actual == expected || raise("expected: #{expected}, got #{actual}")
end

def assert_raise exception, &raiser
  begin
    raiser.call
  rescue Exception => e
    assert_equals e.message, exception
  end
end

def hello name
  raise TypeError.new("name must be a string") unless name.is_a? String
  "hello #{name}"
end

assert_raise("name must be a string") { hello(1) }
