class CreateIssueReviewers < ActiveRecord::Migration
  def change
    create_table :issue_reviewers do |t|
      t.boolean :is_done
      t.string :reviewer
      t.interger :position
      t.references :issue, index: true, foreign_key: true
    end
    add_index :issue_reviewers, :issue_id
  end
end
