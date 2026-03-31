#!/bin/bash
#Script 5: Open Source Manifesto Generator
echo "=============================================="
echo "Open Source Manifesto Generator "
echo "=============================================="
echo ""
read -p "1. Name one open source tool you use every day:" TOOL
read -p "2: In one word, what does 'freedom' mean to you" FREEDOM
read -p "3: Name one thing you would built and share freely:" BUILD
DATE=$(date "+%d %B %Y")
OUTPUT="manifesto_$(whoami).txt"
echo "-----------------------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "-----------------------------------------------" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I use $TOOL every day, and it represents the power of open-source software." >> $OUTPUT
echo "To me, freedom means $FREEDOM , which inspires innovation and sharing." >> $OUTPUT
echo "I believe in building and sharing things like $BUILD so that others can learn and grow." >> $OUTPUT
echo "Open source helps people collaborate, improve, and create better technology together." >> $OUTPUT
echo "" >> $OUTPUT
echo "-----------------------------------------------" > $OUTPUT
echo "" >> $OUTPUT
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
