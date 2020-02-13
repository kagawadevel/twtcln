class CreatePostings < ActiveRecord::Migration[5.2]
  def change
    create_table :postings do |t|
      t.text :content

      t.timestamps
    end
  end
end
