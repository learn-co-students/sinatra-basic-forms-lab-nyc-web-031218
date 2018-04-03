
class Puppy

attr_accessor :name, :age, :breed

	ALL = []

def initialize(name, breed, age)
	@name = name
	@age = age
	@breed = breed
	ALL << self
end

def self.all
	ALL
end

end

