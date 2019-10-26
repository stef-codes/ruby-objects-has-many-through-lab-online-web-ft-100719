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
    
    def new_appointment(Patient,date)
       Appointment.new(Patient,self,date)
    end
  


end 