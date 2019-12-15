require 'pry'

class Doctor

    @@all = []

    attr_accessor :name
    def initialize (name)
        @name = name
        @@all << self

    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def new_appointment(date, patient)
        self.Appointment.new(date,patient)
    end

    def patients
        self.appointments.map do |appointment|
            appointment.patients
        end
    end

end