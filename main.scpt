set oldDelims to AppleScript's text item delimiters
set AppleScript's text item delimiters to {":"}

set systemInfo to (do shell script "system_profiler SPHardwareDataType") as text
set systemInfoText to every paragraph of systemInfo
set modelName to 2nd text item of (5th item of systemInfoText)
set modelIdentifier to 2nd text item of (6th item of systemInfoText)
set processerName to 2nd text item of (7th item of systemInfoText)
set processerSpeed to 2nd text item of (8th item of systemInfoText)
set numberProcessers to 2nd text item of (9th item of systemInfoText)
set numberCores to 2nd text item of (10th item of systemInfoText)
set memory to 2nd text item of (13th item of systemInfoText)
set serialNumber to 2nd text item of (16th item of systemInfoText)
set uuid to 2nd text item of (17th item of systemInfoText)

log uuid
log serialNumber
log memory
log numberCores
log numberProcessers
log processerSpeed
log processerName
log modelIdentifier
log modelName

set AppleScript's text item delimiters to oldDelims
