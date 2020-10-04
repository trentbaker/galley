# Galley [![Build Status](https://drone.bltserver.com/api/badges/trentbaker/galley/status.svg)](https://drone.bltserver.com/trentbaker/galley)

# Running

To run Galley, build from source and launch using the included `galley.sh`

```bash
./galley.sh deploy
```

# Development

To develop Galley, the included `galley.sh` script can be used to set up the virtual environment

```bash
./galley.sh install
```

Then, activate the newly created virtual environment

```bash
source .env/bin/activate
```

To reload the containers with any new changes you've made, simply use the included `galley.sh`

```bash
./galley.sh reload
```