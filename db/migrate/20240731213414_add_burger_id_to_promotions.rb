class AddBurgerIdToPromotions < ActiveRecord::Migration[7.1]
  def change
    add_column :promotions, :burger_id, :integer
    add_index :promotions, :burger_id
  end
end
