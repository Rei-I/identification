class CreateProductItems < ActiveRecord::Migration
  def change
    create_table :product_items do |t|
      t.references :customer, null: false                 # 顧客レコードへの外部キー
      t.string :name, null: false                         # 機種名
      t.boolean :use_pokanon, null: false, default: false     # ポカノン
      t.string :qrcode, null: true                        # QRコード
      t.boolean :use_qr, null: false, default: false      # QRコード使用フラグ

      t.timestamps
    end
    
    add_index :product_items, :name, unique: true
    
    add_foreign_key :product_items, :customers
  end
end

