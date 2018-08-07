class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :reg_number
      t.string :first_name
      t.string :last_name
      t.integer :department_id
      t.integer :level_id
      t.string :imagePath
      t.string :father_name
      t.string :mother_name
      t.string :telephone
      t.string :email
      t.string :dob

      t.timestamps
    end
  end
end
