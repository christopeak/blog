ActiveAdmin.register Comment do
	actions :index, :destroy

	controller do
		def permitted_params
			params.permit comment: [:post_id, :body]
		end
	end

	index do
		id_column
		column :user
		column 'Post ID', :post_id
		column :post
		column :body
		actions
	end
end
