# Captain's Log

A daily reminder to log today's adventures for macOS.

It's quite useful to have a high level log of the work that gets done every day—especially when needing to look back and review what has gone well and what hasn't gone so well in the last month or year.

To make this easier, Captain's Log simply asks you every day at 5pm and stores your answer to your log.

# Usage

Extract to `~/bin/captains-log` (or change the path in the script).

Load the crontab config like this. **Warning:** This will override any existing crontab configuration.

    crontab ~/bin/captains-log/crontab.config
