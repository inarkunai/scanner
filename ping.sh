#!/usr/local/bin/bash
outfile="/directory/to/your_file/ip_results.out"
date > "$outfile"
while read output; do
    echo -n "$output is " >> "$outfile"
    if ping -c1 "$output" > /dev/null 2>&1; then
        echo "up" >> "$outfile"
    else
        echo "down" >> "$outfile"
    fi
done < /directory/to/your_file/ip_target.txt
