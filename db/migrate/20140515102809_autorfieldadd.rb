class Autorfieldadd < ActiveRecord::Migration
  def change
  	add_column :gists, :autor, :string
  end
end
