class DeviseAddLastseenable<%= table_name.camelize.singularize %> < ActiveRecord::Migration
  def self.up
    add_column :<%= table_name %>, :last_seen, :datetime
    add_column :<%= table_name %>, :last_sign_out_at, :datetime
  end
  
  def self.down
    remove_column :<%= table_name %>, :last_seen
    remove_column :<%= table_name %>, :last_sign_out_at
  end
end