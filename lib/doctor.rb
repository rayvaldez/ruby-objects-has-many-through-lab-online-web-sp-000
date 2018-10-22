require 'pry'

class Doctor
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    new_appointment = Appointment.new(patient, date, self)
  end

  def appointments
    Appointment.all.each do |appt|
      this_dr_appts = []
      if appt.doctor == self
        this_dr_appts << appt
      end
      this_dr_appts
    end
  end

  def patients
    appointments.collect{|appt| appt.patient}
  end
end
