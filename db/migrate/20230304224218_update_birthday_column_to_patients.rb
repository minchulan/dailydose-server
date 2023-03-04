class UpdateBirthdayColumnToPatients < ActiveRecord::Migration[6.1]
  def change
    change_column :patients, :birthday, :string
  end
end
