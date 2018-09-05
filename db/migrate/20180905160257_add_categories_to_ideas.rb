class AddCategoriesToIdeas < ActiveRecord::Migration[5.1]
  def change
    add_reference :ideas, :categories, foreign_key: true
  end
end
