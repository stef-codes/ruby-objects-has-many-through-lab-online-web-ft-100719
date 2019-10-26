class Doctor 
  
    attr_accessor :name, :appointments, :patients
    
    @@all = []
    
    def initialize(name)
      @name = name 
      @@all << self
    end 

    def self.all
      @@all
    end
    
    def 


end 