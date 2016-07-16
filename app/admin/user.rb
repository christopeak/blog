ActiveAdmin.register User do
	controller do 
		def permitted_params
			params.permit user: [:email, :name]
		end
	end

	index do
		id_column
		column :email
		column :name
		actions
	end

	show do
		attributes_table do
			row :name
			row :email
			row :sign_in_count
			row :current_sign_in_at
			row :last_sign_in_at
		end
	end
end
