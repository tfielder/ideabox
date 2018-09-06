class CreateIdeas < ActiveRecord::Migration[5.1]
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :image, default: "https://www.boxedinn.com/wp-content/uploads/boxed-inn-12x9x6-shipping-box.jpg"
      t.text :note
      t.timestamps
    end
  end
end
