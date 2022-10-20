class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    array = []
    self.auditions.each do |aud|
      array << aud.actor
    end
    return array
  end

  def locations
    array = []
    self.auditions.each do |aud|
      array << aud.location
    end
    return array
  end

  def lead
    self.auditions.find_by(hired: true) == nil ? "no actor has been hired for this role" : self.auditions.find_by(hired: true)
  end

  def understudy
    self.auditions.find_by(hired: true) == nil ? "no actor has been hired for this role" : self.auditions.where(hired: true).second
  end

end


#understudy returns the second instance of the audition that was hired for 
    #this role or returns a string 'no actor has been hired for understudy for 
    #this role'