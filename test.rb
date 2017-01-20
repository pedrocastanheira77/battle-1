class Test

@@i = rand(0..1)

def initialize(a = ['Shereen', 'Irene'])
  @a = a
end

def test
  puts @a[@@i]
  if @@i == 0
    @@i = 1
  else
    @@i = 0
  end

end

end

test_class = Test.new
test_class.test
test_class.test
test_class.test
test_class.test
test_class.test
test_class.test
test_class.test
test_class.test
