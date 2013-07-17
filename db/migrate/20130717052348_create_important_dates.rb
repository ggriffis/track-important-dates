class CreateImportantDates < ActiveRecord::Migration
  def change
    create_table :important_dates do |t|
      t.date :date_of_importance
      t.string :name
      t.string :description
      t.integer :importance

      t.timestamps
    end
  end
end
