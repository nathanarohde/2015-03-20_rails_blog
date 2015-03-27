class AddPostsAndComments < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :title, :string
      t.column :content, :text
      t.references :user

      t.date
    end

    create_table :comments do |t|
      t.column :text, :text
      t.column :post_id, :integer
      t.references :user

      t.date
    end

    create_table :users do |t|
      t.column :name, :string
      t.column :email, :string
      t.column :password_hash, :string
      t.column :password_salt, :string

      t.timestamps null: false
    end

    create_table :photos do |t|
      t.references :post
      t.column :image_file_name, :string
      t.column :image_content_type, :string
      t.column :image_file_size, :integer
    end

  end

end
