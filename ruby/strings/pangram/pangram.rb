require 'set'

class Pangram
  def self.pangram?(phrase)
    s = Set.new
    phrase.downcase.scan(/[a-z]/).each { |c| s.add(c)}
    s.size === 26
  end
end