Redmine::Plugin.register :redmine_multi_reviewer do
  name 'Redmine Multi Reviewer plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  settings default: {
    reviewers_log: true
  }, partial: 'settings/issue_reviewers'
end
