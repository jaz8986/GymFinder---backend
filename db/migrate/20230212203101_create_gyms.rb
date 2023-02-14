class CreateGyms < ActiveRecord::Migration[7.0]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :address
      t.string :image
      t.string :rating
    end
  end
end
