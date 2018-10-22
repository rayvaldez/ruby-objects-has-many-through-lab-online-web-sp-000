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

  end

  def appointments
    dr_app = []
    Appointment.all.each do |appt|
      if appt.patient == self
        dr_app << appt
      end
    end
  end

  def doctors
    appointments.collect {|appt| appt.date}
  end
end
