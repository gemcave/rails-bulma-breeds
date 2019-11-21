ActiveAdmin.register Horse do
	permit_params :name, :breed_id, :age, :number_of_legs, :top_speed, :image

	form do |f|
		f.semantic_errors # shows errors on :base
		f.inputs          # builds an input field for every attribute
		f.inputs do          # builds an input field for every attribute
			f.input :image, as: :file
		end
		f.actions         # adds the 'Submit' and 'Cancel' buttons
	end
end
