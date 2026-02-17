#!/bin/bash
mkdir -p gen/pg/db
cds compile '*' > gen/pg/db/csn.json
cp package-lock.json gen/pg/package-lock.json