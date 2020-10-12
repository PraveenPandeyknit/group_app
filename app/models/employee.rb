class Employee < ApplicationRecord
	self.table_name='employees'
	self.primary_key= :id
	belongs_to :department, primary_key: :id, foreign_key: :department_id

	delegate :name, to: :department, prefix: true, allow_nil: true
end