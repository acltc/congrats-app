class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :video_1
      t.string :video_2
      t.string :video_3
      t.string :slug

      t.timestamps
    end
  end
end
