require 'pry'

class Patient
  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    new_appointment = Appointment.new(self, doctor, date)
    new_appointment
  end

  def appointments
    dr_app = []
    Appointment.all.each do |appt|
      if appt.doctor == self
        dr_app << appt
      end
    end
    dr_app
  end

  def doctors
    appointments.collect {|appt| appt.date}
  end
end
