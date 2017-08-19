class CreateIssueReviewers < ActiveRecord::Migration
  def change
    create_table :issue_reviewers do |t|
      t.boolean :is_done, :default => false
      t.string :reviewer
      t.interger :position :default => 1
      t.references :issue, index: true, foreign_key: true, null: false
    end
    add_index :issue_reviewers, :issue_id
  end
end
