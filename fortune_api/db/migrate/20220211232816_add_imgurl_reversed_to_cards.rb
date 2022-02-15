class AddImgurlReversedToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :imgUrl_reversed, :string
  end
end
