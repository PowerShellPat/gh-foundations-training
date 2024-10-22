require 'Octokit'
client = Octokit::Client.new(access_token: ENV['GH_TOKEN'])

repo = "PowerShellPat/gh-foundations-training"
new_branch_name = "sdk-ruby"
base_branch = "master"

sha_latest_commit = client.commits(repo, base_branch).first.sha

client.create_ref(repo, "refs/heads/#{new_branch_name}", sha_latest_commit)