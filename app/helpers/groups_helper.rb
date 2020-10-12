module GroupsHelper
	def name_of_selected_users(group)
		participants_ids= group.participants.gsub('[','').gsub(']','').split(',')
		participant_names=[]
		participants_ids.each do |p|
			participant_names << Employee.find(p.to_i).name
		end
		participant_names
	end
end
