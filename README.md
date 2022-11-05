# MULTI TOR (UBUNTU)

### INSTALL
- Install docker
- Install docker-compose
- docker pull ubuntu:bionic

### START
`MIN=9051 MAX=9055 RENEW=300 bash ./start.sh`

### STOP
`MIN=9051 MAX=9055 RENEW=300 bash ./stop.sh`

#### DOC
- MIN: IP range start
- MAX: IP range end
- RENEW: Renew circuit every.. (in seconds)