class CreateLinks < ActiveRecord::Migration[8.0]
  def change
    create_table :links do |t|
      t.string :title
      t.string :hyperlink
      t.string :tiny_code
      t.timestamps
    end
  end
end
