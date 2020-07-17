require 'pry'

class VentureCapitalist
 attr_accessor :name

 def initialize(name)
    @name = name
 end

bowser = VentureCapitalist.new("Bowser")

binding.pry

end
