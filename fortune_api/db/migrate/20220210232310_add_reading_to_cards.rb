class AddReadingToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :reading, :string
  end
end
