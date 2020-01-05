# How to set up Grafana on Clever Cloud

1. create a new NodeJs application linked to a fork of this repo
2. in your application environment variables add ```GF_SERVER_HTTP_PORT=8080``` and ```GOPATH=/home/bas/<app_id>/go_home``` where <app_id> is the id of your application on clever cloud (found in the top right corner of the console)
3. you can now build and start the application, be aware however that if you restart it your data will not be persisted (see next section to learn how to persist data)

Warp10 datasource plugin from OVH will be automatically installed.

# Persisting Data on a database

For this example we will use mysql however the procedure shouldn't be too different with any other type of database

1. create your database add-on on clever cloud and link it to the application
2. in your application environment variables you should now see the info you need to connect to your db
3. you now need to link these informations to grafana. to do this you need to create a few environment variables (replace what's in '<>' with the actual value):
    - ```GF_DATABASE_NAME=<MYSQL_ADDON_DB>```
    - ```GF_DATABASE_HOST=<MYSQL_ADDON_HOST>```
    - ```GF_DATABASE_PASSWORD=<MYSQL_ADDON_PASSWORD>```
    - ```GF_DATABASE_URL=<MYSQL_ADDON_URI>```
    - ```GF_DATABASE_USER=<MYSQL_ADDON_USER>```
    - ```GF_DATABASE_TYPE=mysql```
4. for more information on how to change grafana configuration through environment variables please check: http://docs.grafana.org/installation/configuration/
