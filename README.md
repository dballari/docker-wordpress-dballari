## Usage

1. Clone this repo
2. Copy either the dev or the prod docker compose file naming it docker-compose.yml
3. Copy .env.example naming it .env
4. Edit .env file
5. Start your docker app

```
git clone git@github.com:dballari/docker-wordpress-dballari.git <<<your_app_folder>>>
cd <<<your_app_folder>>>
cp docker-compose-<<<you_environment_here_prod_or_dev>>>.yml docker-compose.yml
cp .env.example .env
sudo nano .env
docker-compose up -d
```

## Work in progress
WP CLI still seams not to be working

## Docker Wordpress [automation]

Forked from here https://github.com/evertramos/docker-wordpress and added db-data folder.

==== This is the original version of the redame file ====

This repo is part of a larger script to changes in the files must be reviewed. 

If you are looking of the previous version check branch basic. 

# Using Wordpress with SSL enabled integrated with NGINX proxy and autorenew LetsEncrypt certificates

![wordpress-docker-letsencrypt](https://github.com/evertramos/images/raw/master/wordpress.jpg)

This docker-compose should be used with WebProxy (the NGINX Proxy):

[https://github.com/evertramos/docker-compose-letsencrypt-nginx-proxy-companion](https://github.com/evertramos/docker-compose-letsencrypt-nginx-proxy-companion)


### Usage

After everything is settle, and you have your three containers running (_proxy, generator and letsencrypt_) you do the following:

1. Clone this repository:

```bash
git clone https://github.com/evertramos/docker-wordpress.git
```

2. Update the service name in your _docker-compose.yml_ file **VERY IMPORTANT**

You must use any name, but make sure it is a unique service name in your environment, otherwise it will conflict with other services. 

3. Configure your _.env_ file:

Copy .env.sample to .env and update with your data

> The proxy network must match the network name you have set in the proxy settings. 

4. Start your project

```bash
docker-compose up -d
```

**Be patient** - when you first run this repo, the database might take sometime to launch and the process of getting a new certificate for your domain might take some time.

----

#### Make sure the wordpress data files has user and group set to **www-data**, so you could update, install, delete files from your admin panel.

----


#### Proxy

[Proxy - nginx-proxy-automation](https://github.com/evertramos/nginx-proxy-automation)

----

### Further Options

#### wp-cli (https://wp-cli.org/)

For whoever uses *wp-cli* here is how to implement it on this repo. 


Test to see if it´s working

```bash
./wp-cli-test.sh

```

If you would, add the alias "wp" to your `.bash_aliases`:

```bash
alias wp="docker-compose run --rm wpcli"
```

Next time you need to run a wp-cli command just go to where you have your docker-compose file and run a `wp` command.

----

### Known Issues

#### Azure

Running docker on Azure servers you must mount your database in your disks partitions (example: `/mnt/data/`) so your db container can work. This is a some kind of issue regarding Hyper-V sharing drivers... not really sure why.


