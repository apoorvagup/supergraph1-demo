#!/bin/bash
echo "Creating supergraph..."
pwd
hostname
echo $WORKSPACE
ls -lart
rover supergraph compose --config $WORKSPACE/$SUPERGRAPH_CONFIG_PATH --output $WORKSPACE/$SUPERGRAPH_SCHEMA_PATH --elv2-license accept