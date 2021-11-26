#!/bin/bash
echo Inventory Update Process is executing...

cd /Users/brosheng/5234_DistributedComputing/batch

java -classpath "/Users/brosheng/5234_DistributedComputing/batch/h2-1.4.200.jar;." edu.osu.cse5234.batch.InventoryUpdater

echo Inventory Update completed...
exit 0