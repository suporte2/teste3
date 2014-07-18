class CreateStiflers < ActiveRecord::Migration
  def change
    create_table :stiflers do |t|
      t.string :nome
      t.string :cor
      t.string :numero

      t.timestamps
    end
  end
end
