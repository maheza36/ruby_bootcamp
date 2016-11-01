require "./person"
class Instructor < Person

  attr_accessor :nick_name, :strength

  def initialize(params={})
    super
    #variables de instancia
    @nick_name = params[:nick_name] ? params[:nick_name] : "N/A"
    @strength = params[:strength] ? params[:strength] : "N/A"
  end

  def clain_your_strength
    "i like so much #{self.strength.upcase}"
  end

end
