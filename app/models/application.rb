class Application < ActiveRecord::Base
	before_save :default_values
  attr_accessible :application_date, :course_no, :passport_copy,:semester_year, :sign_form, :university_id, :student_id, :status
validates :application_date, :course_no, :passport_copy, :semester_year, :sign_form, :university_id, :presence => true
mount_uploader :passport_copy, PassportCopyUploader
mount_uploader :sign_form, PassportCopyUploader
belongs_to :student
belongs_to :university

SEMESTER = ['2013', '2014']

#validates_inclusion_of :university_id, :in => 1..7 , :message => "its not an option" , :allow_nill => true , :allow_blank => true
#UNIVERSITIES = [['--' , '1'] , ['Carnegie Mellon University in Qatar' , '2'] , ['Virginia Commonwealth University in Qatar' , '3'] , ['Georgetown University in Qatar' , '4'] , ['Northwestern University in Qatar' , '5'] , ['Texas A&M University in Qatar' , '6'] , ['Weill Cornell Medical College in Qatar' , '7']]
def default_values
	if (self.status).nil?
		self.status ||= "Pending"
	end
end


end
