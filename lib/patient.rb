require 'pry'

class Patient

    attr_accessor :name, :appointment, :doctor 

    def initialize (name)
        @name = name
    end

    def self.all
        @@all
    end

    def appointments
        Appointments.all.select do |appointment|
            appointment.patient = self 
        end
    end

    def doctors
        Appointment.all.map do |appointment|
            appointment.doctor
        end
    end

    def new_appointment(doctor, date)
        Appointment.new(doctor, self, date)
    end 


end
