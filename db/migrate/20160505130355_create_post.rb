class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :body
    end
  end
end
