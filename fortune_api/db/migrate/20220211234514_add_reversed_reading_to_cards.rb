class AddReversedReadingToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :reversed_reading, :string
  end
end
