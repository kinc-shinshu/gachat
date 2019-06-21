# Gachat

API server for *Gachat-client* powered by GraphQL

## Development usage

### Prerequisites

- Docker

```
# launch database
make postgres

# create database (please wait database is launched)
make database

# up server
bundle exec rails s

# stop database
make stop

# cleaning container, real data
make clean
```
