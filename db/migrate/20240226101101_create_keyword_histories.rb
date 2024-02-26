class CreateKeywordHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :keyword_histories do |t|
      t.text :keyword

      t.timestamps
    end
  end
end
