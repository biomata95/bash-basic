#!/bin/bash

echo -e "# Backup report #" >>  bkp-$(date +"%d")$(date +"%m")$(date +"%Y").log
echo -e "Initialized in:: $(date +"%d-%m-%Y") $(date +"%T")"  >> bkp-$(date +"%d")$(date +"%m")$(date +"%Y").log

tar -czvf backup.tar.gz $@

echo -e "Finished in: $(date +"%d-%m-%Y") $(date +"%T")\n\n\n"  >> bkp-$(date +"%d")$(date +"%m")$(date +"%Y").log
