class CreateDoThis < ActiveRecord::Migration
  def change
    create_table :do_this do |t|
      t.string :title
      t.text :notes
      t.date :due
      t.boolean :done

      t.timestamps null: false
    end
  end
end
