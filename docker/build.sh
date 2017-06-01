#/bin/bash
cd ..
mvn package
cd docker
rm -rf rap/SNAPSHOT
cp -rf ../target/RAP-*-SNAPSHOT rap/SNAPSHOT
docker-compose build
rm -rf rap/SNAPSHOT
