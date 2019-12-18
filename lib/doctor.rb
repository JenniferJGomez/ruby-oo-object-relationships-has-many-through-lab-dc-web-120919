class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        #returns all appointments associated with this Doctor
        #that iterates through all Appointments and finds those belonging to this doctor.
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end 


end