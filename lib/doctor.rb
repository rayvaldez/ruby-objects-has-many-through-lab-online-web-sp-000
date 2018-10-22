require 'pry'

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

  def new_appointment(date, patient)
    new_appointment = Appointment.new(date, self, patient)
  end

  def appointments
    patient_app = []
    Appointment.all.each do |appt|
      if appt.patient == self
        patient_app << appt
      end
    end
    patient_app
  end

  def doctors
    appointments.collect{ |appt| appt.date}
  end

  def patients
    appointments.collect { |appt| appt.patient}
  end

end
