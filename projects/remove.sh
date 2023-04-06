##!/bin/bash

# Delete all files in the data directory except for the excluded ones
files_to_delete=$(find data/* -type f \
                  -not -path "data/elasticsearch/**/*" \
                  -not -path "data/interpolation/address.db" \
                  -not -path "data/interpolation/street.db" \
                  -not -path "data/placeholder/store.sqlite3")

echo "$files_to_delete" | tee | xargs rm -rf
