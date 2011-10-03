class XRange
  def initialize(n) @n=n end
  def each() 0.upto(@n-1){|i|yield i} end
end

def xrange(n) XRange.new(n) end

def ngram(n, terms)

  array = []
  for i in xrange(terms.length - n + 1)
    array << terms[i..i+n-1]
  end

  return array
end