require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false 
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    split_array = self.split(/[.!?]/)
    split_array.delete_if? {|array_content| array_content.length < 1}
    split_array.count
  end
end