class CreateNota < ActiveRecord::Migration
  def change
    create_table :nota do |t|
      t.string :portugues
      t.string :matematica
      t.string :historia
      t.string :biologia

      t.timestamps
    end
  end
end
