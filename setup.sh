#!/bin/bash

# UNLOAD
launchctl unload /Library/LaunchAgents/change_background.plist

# COPY
cp change_background.plist /Library/LaunchAgents/

# LOAD
launchctl load /Library/LaunchAgents/change_background.plist

# VERIFY
launchctl list | grep change_background 