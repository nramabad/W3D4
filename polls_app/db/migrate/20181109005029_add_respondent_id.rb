class AddRespondentId < ActiveRecord::Migration[5.1]
  def change
    
    add_column :responses, :respondent_id, :integer
    
  end
end
