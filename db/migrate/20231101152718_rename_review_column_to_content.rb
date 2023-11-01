class RenameReviewColumnToContent < ActiveRecord::Migration[7.0]
  def change
    rename_column(:reviews, :review, :content )
  end
end
