class RemovePromptsCountFromKeywordHistory < ActiveRecord::Migration[7.1]
  def change
    remove_column :keyword_histories, :prompts_count, :integer
  end
end
