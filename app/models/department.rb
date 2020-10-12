class Department < ApplicationRecord
	self.table_name='departments'
	self.primary_key= :id
	has_many :employees

	def self.select_one_employee_from_each_department
		all_department_ids=self.all.pluck(:id)
		selected_employee_ids=[]
		all_department_ids.each do |d|
			department=self.find(d)
			first_employee=department.employees.first
			selected_employee_ids << first_employee.id
		end
		selected_employee_ids
	end
end
