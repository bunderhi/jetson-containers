#!/usr/bin/env bash
DONKEYCARDIR="/home/brian/donkeycar"
CONTAINER=$1
DOCKERFILE=$2

shift 
shift

cp scripts/entrypoint.sh $DONKEYCARDIR
cp $DOCKERFILE $DONKEYCARDIR
cd $DONKEYCARDIR

echo "Building $CONTAINER container..."

sudo docker build -t $CONTAINER -f $DOCKERFILE "$@" .

