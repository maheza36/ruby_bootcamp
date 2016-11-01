require "./person"
class Student < Person #heredar de P00erson
  attr_accessor  :tutor, :average
  def initialize(params={})
    super
    @tutor = params[:tutor] if params[:tutor]
    @average = params[:average] if params[:average]
  end


  def clain_your_age
    "#{super} and im student"
  end

end
