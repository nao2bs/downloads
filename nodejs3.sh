## nodejs install in Devpod

curl -fsSL https://deb.nodesource.com/setup_lts.x | -E bash -

## Installing the NodeSource Node.js 16.x repo...

## Populating apt-get cache...

apt-get update

## Confirming "jammy" is supported...

curl -sLf -o /dev/null 'https://deb.nodesource.com/node_16.x/dists/jammy/Release'

## Adding the NodeSource signing key to your keyring...

curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | gpg --dearmor | tee /usr/share/keyrings/nodesource.gpg >/dev/null

## Creating apt sources list file for the NodeSource Node.js 16.x repo...

echo 'deb [signed-by=/usr/share/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x jammy main' > /etc/apt/sources.list.d/nodesource.list
echo 'deb-src [signed-by=/usr/share/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x jammy main' >> /etc/apt/sources.list.d/nodesource.list

## Running `apt-get update` for you...

apt-get update

## Run `sudo apt-get install -y nodejs` to install Node.js 16.x and npm
## You may also need development tools to build native addons:
     apt-get install gcc g++ make
## To install the Yarn package manager, run:
     curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | tee /usr/share/keyrings/yarnkey.gpg >/dev/null
     echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | tee /etc/apt/sources.list.d/yarn.list
     apt-get update && apt-get install yarn -y
