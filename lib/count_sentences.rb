require 'pry'

class String
  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.chars.each_with_index.reduce(0) do |result, (char, index)|
      self.sentence_end?(index) ? result + 1 : result
    end
  end

  def sentence_end?(index)
    return true if index == self.length - 1
    '.?!'.include?(self[index]) && self[index + 1] == ' '
  end
end