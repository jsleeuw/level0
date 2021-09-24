# README

- `az login `
- `az group create -n level0 -l eastus`
- `ssh-keygen -m PEM -t rsa -b 4096 -f ~/.ssh/id_rsa_azure_deploy -C ""`
- `az vm create -g level0 -n level0vm --admin-username deploy --image ubuntults --ssh-key-values ~/.ssh/id_rsa_azure_deploy.pub --public-ip-sku Standard`
- `ssh deploy@20.84.24.146 -i ~/.ssh/id_rsa_azure_deploy`
- `az vm open-port -g level0 -n level0vm --port 80`

### on the vm

- `ssh deploy@20.84.24.146 -i ~/.ssh/id_rsa_azure_deploy`
- `sudo apt-get update`
- `sudo apt-get install curl git-core -y`
- `echo "gem: --no-rdoc --no-ri" > ~/.gemrc`
- `command curl -sSL https://rvm.io/mpapis.asc | gpg --import -`
- `command curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -`
- `curl -sSL https://get.rvm.io`
- `source ~/.rvm/scripts/rvm`
- `rvm install 2.6.7`
- `rvm use 2.6.7`
- wait tho, I also created a gemset
- define any config files (application.yml, etc) to the vm shared (`/apps/level0/shared/config`) and add `append :linked_files`

what else today..

- i had to add a deployment key on GH
- I THINK WE ARE READY TO MOVE ON TO OUR RAILS APP
- OK, the last run of `cap production deploy` worked
