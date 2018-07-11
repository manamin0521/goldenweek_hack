class ChangeDatatypeTitleOfImage < ActiveRecord::Migration[5.1]
  def change
    change_column :posts, :image, :string
  end
end
