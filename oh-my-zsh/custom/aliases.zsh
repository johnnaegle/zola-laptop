alias wtf-ssh='killall -m ssh-agent; eval `ssh-agent` && ssh-add -K ~/.ssh/id_rsa'
alias v='cd ~/web/tools/vagrant && vagrant'
alias restart-web="pushd ~/web/web-marketplace && npm run dev-stop && npm run dev-staging && popd"
alias build="cd ~/web/marketplace-web && git pull && npm version patch && ~/web/tools/scripts/bump-staging-version.rb && open https://awx-staging.zola.com/#/templates/workflow_job_template/77/details && cd ~/web/web-marketplace"
