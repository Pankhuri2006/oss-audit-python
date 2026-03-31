#!/bin/bash
#Script4: Log File Analyzer
KEYWORD=${1:"error"}
echo "==============================================="
echo "Log File (journalctl)"
echo "==============================================="
echo ""
echo "Counting occurence"
COUNT=$(journalctl | grep -i "$KEYWORD" | wc -l)
echo ""
echo "Keyword '$KEYWORD' found $COUNT times"
echo ""
echo "Last 5 matching lines:"
journalctl | grep -i "$KEYWORD" | tail -5
