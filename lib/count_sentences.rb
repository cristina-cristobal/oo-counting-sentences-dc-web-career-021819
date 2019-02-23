require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    # split the string on any and all periods, question marks, and exclamation marks
    sentence_array = self.split(/[.?!]/)
    # deletes empty
    sentence_array.delete_if{|sentence| sentence.empty?}
    # count the number of elements that result from that split
    sentence_array.length
  end
end
