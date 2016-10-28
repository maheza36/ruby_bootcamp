class Instructor

  attr_accessor :first_name, :last_name, :nick_name, :age, :strength

  def initialize(params={})
    #variables de instancia
    @first_name = params[:first_name] ? params[:first_name] : "N/A"
    @last_name = params[:last_name] ? params[:last_name] : "N/A"
    @nick_name = params[:nick_name] ? params[:nick_name] : "N/A"
    @age = params[:age] ? params[:age] : 1000
    @strength = params[:strength] ? params[:strength] : "N/A"
  end

  def clain_your_strength
    "i like so much #{self.strength.upcase}"
  end

end
