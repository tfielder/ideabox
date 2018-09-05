class AddIdeasToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :ideas, :users, foreign_key: true
  end
end
