class Patient
  
    attr_accessor :name, :appointments, :doctors
    
    @@all = []
    
    def initialize(name)
      @name = name 
      @@all << self
    end 

    def self.all
      @@all
    end
  
  def new_appointment(doctor,date)
    Appointment.new(date,doctor,self)
  end

  def appointments
    Appointment.all.select do |appointment| 
      appointment.patient == self
    end
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end
end 