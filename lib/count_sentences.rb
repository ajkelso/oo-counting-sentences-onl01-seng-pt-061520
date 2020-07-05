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

    total = self.split(/[.!?]/)
    total.each do |string|
      total.delete(string) if string = ""
    end
    total.count
  end
end