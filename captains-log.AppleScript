-- Each log entry is dated and given its own line in the log
set {year:y, month:m, day:d, weekday:wd} to (current date)
set m to characters 1 thru 3 of (m as string)
set wd to characters 1 thru 3 of (wd as string)
set log_date to wd & " " & m & " " & d & " " & y

-- Output file
set output_file to "~/captains-log.txt"

-- What did the user do today?
tell application "Finder"
  activate
  display dialog "What did you do today?" default answer "" buttons {"That should be all, lieutenant."} default button 1
  set log_entry to text returned of the result
end tell

-- Write to file
set message to "\n" & log_date & "\t\t" & log_entry
do shell script "echo " & (quoted form of message) & " >> " & output_file

-- Ego boost
display dialog "Today's log entry has been added to the ship's archives, commander." buttons {"Very well."} default button 1

