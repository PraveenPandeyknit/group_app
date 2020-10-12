class Group < ApplicationRecord
	self.table_name='groups'
	self.primary_key= :id

  	def self.create_new_group
  		self.current_group_number
  		self.create_first_group_new_round if self.latest_group_created.blank?
  	end	

  	def self.current_group_number
  		@current_group_number=self.latest_group_created.present? ? @latest_group_created.round_number : 1
  	end

  	def self.latest_group_created
  		@latest_group_created=self.last
  	end

  	def self.create_first_group_new_round
  		employees_for_group= Department.select_one_employee_from_each_department
  		self.create(name: "Group 1", round_number: 1, round_started_on: Date.today(),participants: employees_for_group)
  	end

end