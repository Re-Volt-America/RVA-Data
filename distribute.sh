#!/bin/bash

readonly DIST=/home/deploy/distribute

bundle exec rake

mkdir -p $DIST/rva_data
[ -e $DIST/rva_data/yml ] && rm -r $DIST/rva_data/yml
[ -e $DIST/rva_data/yaml ] && rm -r $DIST/rva_data/yaml
[ -e $DIST/rva_data/rva_data.json ] && rm $DIST/rva_data/rva_data.json

mv yml $DIST/rva_data
mv yaml $DIST/rva_data
mv rva_data.json $DIST/rva_data

chmod -R 777 $DIST/rva_data/
