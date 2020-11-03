class Gym

  @@all = []

  attr_accessor :lifter, :membership, :gym, :cost, :lift_total
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end 

  def memberships
    Membership.all.select {|x| x.gym == self}
  end

  def lifters
    memberships.map { |x| x.lifter}
  end 

  def combined 
    total = 0
    lifters.each do |x|
      total += x.lift_total
    end 
    total
  end 

end
