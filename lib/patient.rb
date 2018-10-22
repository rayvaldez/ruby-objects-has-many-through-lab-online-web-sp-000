require 'pry'

class Patient

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    new_appt = Appointment.new(self, date, doctor)
  end

  def appointments
    this_patient_appts = []
    Appointment.all.each do |appt|
      if appt.patient == self
        this_patient_appts << appt
      end
    end
    this_patient_appts
  end

  def doctors
    appointments.collect{|appt| appt.date}
  end

end
