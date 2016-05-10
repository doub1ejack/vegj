
# helpful SO posts in understanding how to set null & default values:
# - http://stackoverflow.com/questions/36862809/whats-this-from-to-in-my-mysql-table-schema/36863061#36863061
# - http://stackoverflow.com/questions/23098047/change-default-value-for-table-column-with-rails-migrations-rails-4

class ChangeColumnDefaultToGarden < ActiveRecord::Migration
  def up 
    change_column_null :gardens, :name, false
    change_column_null :gardens, :square_feet, false
    change_column_null :gardens, :zone, false
  end
  
  def down
    change_column_null :gardens, :name, true
    change_column_null :gardens, :square_feet, true
    change_column_null :gardens, :zone, true
  end
  
end
