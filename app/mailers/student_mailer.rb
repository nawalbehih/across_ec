class StudentMailer < ActionMailer::Base

  def registration_confirmation(student)
  	@student = student
  	mail(:from => "across.ec@gmail.com", :to => student.email, :subject => "Regisration Confirmation")
  end

  def application_confirmation(student)
  	@student = student
  	mail(:from => "across.ec@gmail.com", :to => student.email, :subject => "Application Confirmation")
  end
  def application_approved(student, application)
  	@student = student
  	@application = application
  	mail(:from => "across.ec@gmail.com", :to => student.email, :subject => "Application Approved")
  end
  def application_declined(student, application)
  	@student = student
  	@application = application
  	mail(:from => "across.ec@gmail.com", :to => student.email, :subject => "Application Declined")
  end
end
