class CreateResistors < ActiveRecord::Migration[7.0]
  def change
    create_table :resistors do |t|
      t.string :res_type
      t.string :res_value

      t.timestamps
    end
  end
end
