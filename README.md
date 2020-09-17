# xdscontainer

#### docker-compose scripts to run a XDS node in docker on a RPI built directly from [block-core](https://github.com/block-core/blockcore) source along with a PWA node monitoring [application](https://github.com/mikedennis/NodeDashboard) for monitoring the status of the XDS fullnode ####

### RPI Specific Hints ###
* [To install docker-compose on RPI4](https://dev.to/rohansawant/installing-docker-and-docker-compose-on-the-raspberry-pi-in-5-simple-steps-3mgl/comments)
  * sudo apt-get -y install libffi-dev libssl-dev python3-dev python3 python3-pip
  * sudo pip3 -v install docker-compose

 * [To work with openvpn you need to precreate the network first](https://stackoverflow.com/questions/45692255/how-make-openvpn-work-with-docker)
   * basically involves creating a docker network first => docker network create xds-net --subnet 172.18.0.0/24

### Configuration Variables ###
* NOTE: 172.18.0.0/24 should be from docker network 'xds-net'
  * eg. 'docker network inspect xdscontainer_default' then look for Subnet
  * 172.18.0.2 is the ip of the running fullnode container
* rpcuser and rpcpassword are your rpc credentials
* Ports
  * fullnode p2p is 38333
  * fullnode rpc is 48333
  * fullnode api is 48334

### Starting ###
* To run the containers in the background:
  * docker-compose up -d

### Testing ###
* browse to http://localhost:48334 to see web ui for fullnode
* https://localhost:8081/  will be the PWA for nodedashboard
* https://localhost:8080/ will be the CORS proxy to RPC of fullnode
