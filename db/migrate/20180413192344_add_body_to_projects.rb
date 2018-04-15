class AddBodyToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :body, :text
  end
end
