#!/bin/sh -e

testdb=test/db.s3db
rm -f $testdb
sqlite3 -batch $testdb <sql/schema.sqlite
sqlite3 -batch $testdb <sql/sampleworld.sql
sqlite3 -batch $testdb <test/test.sql

cat config.lua.dist test/config.inc.lua >test/config.lua
./otserv --config test/config.lua
