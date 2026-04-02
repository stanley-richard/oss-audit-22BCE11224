#!/bin/bash
# =============================================================
# Script 5: Open Source Manifesto Generator
# Author: [Your Name] | Roll: [Your Roll Number]
# Course: Open Source Software | VITyarthi
# Description: Asks the user 3 interactive questions, composes
#              a personalised open-source philosophy statement
#              about Firefox, and saves it to a .txt file.
# =============================================================

# --- Alias concept demonstration (shown as a comment) ---
# In a live shell session you could define:
#   alias ffver='firefox --version'
# Aliases give short names to longer commands. In scripts,
# we use variables and functions instead, as aliases are not
# always inherited by subshells.

# --- Welcome banner ---
echo "============================================================"
echo "       OPEN SOURCE MANIFESTO GENERATOR — VITyarthi         "
echo "============================================================"
echo ""
echo "  You chose Firefox — a browser built by a nonprofit to"
echo "  keep the web open, free, and accountable to its users."
echo ""
echo "  Answer three questions to generate your manifesto."
echo "------------------------------------------------------------"
echo ""

# --- Interactively collect user answers using read ---
read -p "  1. Name one open-source tool you use every day: " TOOL
echo ""

read -p "  2. In one word, what does 'freedom' mean to you?  " FREEDOM
echo ""

read -p "  3. Name one thing you would build and share freely: " BUILD
echo ""

# --- Validate: make sure no field was left empty ---
if [ -z "$TOOL" ] || [ -z "$FREEDOM" ] || [ -z "$BUILD" ]; then
    echo "  [!] Please answer all three questions. Re-run the script."
    exit 1
fi

# --- Get current date and build output filename ---
DATE=$(date '+%d %B %Y')              # e.g. 25 March 2026
OUTPUT="manifesto_$(whoami).txt"      # Personalised to logged-in user

echo "------------------------------------------------------------"
echo "  Generating your Firefox open-source manifesto..."
echo ""

# --- Clear any previous version of the output file ---
> "$OUTPUT"

# --- Write manifesto header to file using >> (append) ---
echo "============================================================"  >> "$OUTPUT"
echo "       MY OPEN SOURCE MANIFESTO — FIREFOX EDITION          "  >> "$OUTPUT"
echo "  Generated on : $DATE                                      "  >> "$OUTPUT"
echo "  Author       : $(whoami)                                  "  >> "$OUTPUT"
echo "============================================================"  >> "$OUTPUT"
echo ""                                                              >> "$OUTPUT"

# --- Personalised manifesto paragraph using string concatenation ---
echo "  I chose Firefox as the subject of my open-source audit"     >> "$OUTPUT"
echo "  because it represents something rare: a piece of software"  >> "$OUTPUT"
echo "  built not to generate profit, but to protect people."       >> "$OUTPUT"
echo ""                                                              >> "$OUTPUT"
echo "  Every day, I use $TOOL — a tool that exists because"        >> "$OUTPUT"
echo "  someone believed in building openly and sharing freely."    >> "$OUTPUT"
echo "  To me, freedom means $FREEDOM. Firefox embodies that"       >> "$OUTPUT"
echo "  through the Mozilla Public License 2.0 — ensuring that"     >> "$OUTPUT"
echo "  any changes to its code must also remain open source,"      >> "$OUTPUT"
echo "  so the web stays accountable to its users, not corporations.">> "$OUTPUT"
echo ""                                                              >> "$OUTPUT"
echo "  Inspired by this, I would build $BUILD and release it"      >> "$OUTPUT"
echo "  freely — because the open web only survives if people"      >> "$OUTPUT"
echo "  like us choose to contribute back to it."                   >> "$OUTPUT"
echo ""                                                              >> "$OUTPUT"
echo "  Open source is not just a license. It is a promise:"        >> "$OUTPUT"
echo "  that the tools we depend on will never be turned against us.">> "$OUTPUT"
echo ""                                                              >> "$OUTPUT"
echo "  — $(whoami), $DATE"                                          >> "$OUTPUT"
echo "============================================================"  >> "$OUTPUT"

# --- Display the saved manifesto on screen ---
echo "  [✔] Manifesto saved to: $OUTPUT"
echo ""
cat "$OUTPUT"
echo ""
echo "============================================================"
