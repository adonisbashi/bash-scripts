#!/bin/bash

echo "=== Pizza Menu ==="
for PIZZA in BBQ Veggie Supreme "Buffalo Chicken" "Meat Lovers" "Chicken Bacon Ranch" "Hot Honey Ricotta"; do
    echo "- $PIZZA"
done

echo ""
echo "=== Last 5 backups ==="
for i in {1..5}; do
    echo "Backup $i: backup_2026--03-$(printf '%02d' $i).tar.gz"
done

echo ""
echo "=== Countdown ==="
COUNT=3
while [ $COUNT -gt 0 ]; do
    echo "$COUNT..."
    COUNT=$((COUNT -1))
done
echo "Done!"