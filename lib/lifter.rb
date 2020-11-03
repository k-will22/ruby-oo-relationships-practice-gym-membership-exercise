class Lifter

  @@all = []

  attr_accessor :membership, :gym, :cost
  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self 
  end

  def self.all 
    @@all 
  end 

  def memberships 
    Membership.all.select {|x| x.lifter == self}
  end 

  def self.average 
    self.all.sum {|x| x.lift_total} / self.all.size
  end 

  def new_gym(cost, gym)
    Membership.new(cost, gym, self)
  end 

end
