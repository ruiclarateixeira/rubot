#
# RuBot 
#

class Rubot
  def initialize()
    puts "*** Starting Rubot ***"
    @name = "RuBot"
  end

  def repeat(sentence)
    get_tag() + " " + sentence
  end

  def get_tag()
    "[" + @name + "]"
  end
end
