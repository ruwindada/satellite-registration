#!/bin/bash

# Check if a restart is needed
if needs-restarting -r | grep -q "Reboot is required"; then
  echo "Reboot is required. Restarting shortly..."
  #reboot
  shutdown -r +2
else
  echo "No reboot is necessary."
fi

