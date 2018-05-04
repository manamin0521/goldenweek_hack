class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :body
      t.text :tec
      t.text :point
      t.text :link

      t.timestamps
    end
  end
end
