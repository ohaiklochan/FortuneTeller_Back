class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :upright_meaning
      t.string :reversed_meaning

      t.timestamps
    end
  end
end
