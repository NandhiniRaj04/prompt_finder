class AddPromptsCountToKeywordHistory < ActiveRecord::Migration[7.1]
  def change
    add_column :keyword_histories, :prompts_count, :integer
  end
end
