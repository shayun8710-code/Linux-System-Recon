#!/bin/bash
# System Reconnaissance Script

# הגדרת שם קובץ הפלט
OUTPUT_FILE="recon_results.txt"

echo "Starting System Recon..."
echo "Saving results to $OUTPUT_FILE"

# יצירת הקובץ והוספת כותרת עם חץ בודד (>) כדי לדרוס קובץ ישן אם קיים
echo "=== System Reconnaissance Report ===" > $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# תאריך ושעה
echo "--- Date & Time ---" >> $OUTPUT_FILE
date >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# משתמשים מחוברים
echo "--- Logged in Users ---" >> $OUTPUT_FILE
who >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# כתובת IP ומידע על כרטיסי רשת
echo "--- Network Interfaces & IP ---" >> $OUTPUT_FILE
ip a >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# מידע על גרסת מערכת ההפעלה
echo "--- OS Info ---" >> $OUTPUT_FILE
uname -a >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

echo "Reconnaissance Complete! Type 'cat $OUTPUT_FILE' to see the results."
