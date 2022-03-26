
class Isogram
  def self.isogram?(word)
    letters = word.downcase.scan(/[a-z]/i)
    letters == letters.uniq
  end
end