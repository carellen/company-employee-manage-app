class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.belongs_to :user, index: true
      t.belongs_to :company, index: true
      t.timestamps
    end
  end
end
