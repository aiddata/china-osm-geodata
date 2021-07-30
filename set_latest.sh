#!/bin/bash


release=$1

timestamp=$2

prev=`cat ${HOME}/tuff_osm/geojsons/version.txt`

mv ${HOME}/tuff_osm/geojsons ${HOME}/tuff_osm/previous/$prev

cp -r ${HOME}/tuff_osm/output_data/$release/results/$timestamp/geojsons/ ${HOME}/tuff_osm/geojsons

echo ${release}_${timestamp} > ${HOME}/tuff_osm/geojsons/version.txt
