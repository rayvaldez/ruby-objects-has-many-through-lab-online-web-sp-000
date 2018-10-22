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
    pat_app = []
    Appointment.all.each do |appt|
      if appt.patient == self
        pat_app << appt
      end
    end
    pat_app
  end

  def doctors
    binding.pry
    appointments.collect {|appt| appt.date}
  end
end
