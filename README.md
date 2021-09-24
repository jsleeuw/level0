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
