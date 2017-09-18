class PigLatinizer

  @@all = []

  attr_reader :user_input

  def initialize()
    @user_input = user_input
    self.split_to_array
    @@all << self
  end

  def split_to_array

  end

  def piglatinize(word)
    if self.start_with_vowel?(word)
      word += "way"
    else
      self.fix_word(word)
    end
  end

  def to_pig_latin(sentence)
    sentence.split.map do |word|
      self.piglatinize(word)
    end.join(" ")
  end

  def start_with_vowel?(word)
    word[0].downcase.match(/[aeiou]/) ? true : false
  end

  def fix_word(word)
    until word[0].match(/[aeiouy]/)
      last = word.slice!(0)
      word += last
    end
    word += "ay"
  end



  def self.all
    @@all
  end

end
