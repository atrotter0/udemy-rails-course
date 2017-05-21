module Destructable
  def destroy(any_object)
    puts "I will destroy the object"
  end
end

class User
  include Destructable
  attr_accessor :name, :email
  
  def initialize(name, email)
    @name = name
    @email = email
  end

  def run
    puts "Hey I'm running"
  end

  def self.identify_yourself
    puts "Hey I'm a Class method"
  end

  def get_name 
    @name
  end
end

class Buyer < User
  def run
    puts "Hey I'm not running and I'm in buyer class"
  end
end

class Seller < User

end

class Admin < User

end


# super and subclass:
user1 = User.new("Coco", "coco@teamup.com")
user1.run
buyer1 = Buyer.new("Jon", "jon@doe.com")
buyer1.run
seller1 = Seller.new("Joe Seller", "jon_seller@doe.com")
seller1.run
admin1 = Admin.new("Jon Admin", "jon_admin@doe.com")
admin1.run
puts Buyer.ancestors

# class method
User.identify_yourself

# module example
user0 = User.new("noob", "noob@noobcity.com")
user0.destroy(user0)
