class CreateCookies < ActiveRecord::Migration[6.1]
  def change
    create_table :cookies do |t|
      t.string :fortune
      t.string :meaning

      t.timestamps
    end
  end
end
