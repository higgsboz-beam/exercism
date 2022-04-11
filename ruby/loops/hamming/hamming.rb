module Hamming

  def self.compute(a,b)
    raise ArgumentError if a.length != b.length
    (0..a.length).each.count{ |x| a[x] != b[x] }
  end

end
