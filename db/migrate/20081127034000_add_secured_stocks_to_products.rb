class AddSecuredStocksToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :stock_trigal_compromised, :integer, :default => 0
    add_column :products, :stock_polo_compromised, :integer, :default => 0
    add_column :products, :stock_almacen_compromised, :integer, :default=>0
    add_column :products, :stock_carisa_compromised, :integer, :default=>0
  end

  def self.down
    remove_column :products, :stock_carisa_compromised
    remove_column :products, :stock_almacen_compromised
    remove_column :products, :stock_polo_compromised
    remove_column :products, :stock_trigal_compromised
  end
end
