global modelName,modelIdentifier,processerName,processerSpeed,numProcessors,numCores,memory,serialNumber,uuid,modelYear

on getSystemInfo() -- gets hardware info from system_profiler and saves it to variables
  set oldDelims to AppleScript's text item delimiters -- save current text delimiters to oldDelims
  set AppleScript's text item delimiters to {":"} -- set new text delimiters to ":"
  set systemInfo to every paragraph of (do shell script "system_profiler SPHardwareDataType") -- get raw hardware data
  set specsList to {"Model Name","Model Identifier","Processor Name","Processor Speed","Number of Processors","number of Cores","Memory","serial Number","Hardware UUID"} -- define list of specs to get
  set specsData to ""
  repeat with systemItem in systemInfo -- repeat with each item of raw hardware data
    repeat with specsItem in specsList -- repeat with list of specs to get
      if systemItem contains specsItem then -- if raw data conatains desired specs then add it to a variable
        set systemItem to 2nd text item of systemItem
        set specsData to specsData & text 2 through (length of systemItem) of systemItem & ":" -- remove space from beginning
      end if
    end repeat
  end repeat
  set {modelName,modelIdentifier,processerName,processorSpeed,numProcessors,numCores,memory,serialNumber,uuid} to text items of specsData -- set all variables to hardware info from above
  set AppleScript's text item delimiters to oldDelims -- set text delimiters to oldDelims
end getSystemInfo

on getModelYear()
  set oldDelims to AppleScript's text item delimiters -- save current text delimiters to oldDelims
  set AppleScript's text item delimiters to {">","<"} -- set new text delimiters to ">" and "<"
  set tmpFiles to POSIX path of (path to temporary items) -- gets temporary files path
  set lengthSerial to length of serialNumber -- gets length of serial (serial can be 11 or 12 numbers)
  set endSerial to text 9 through (length of serialNumber) of serialNumber -- gets last 3 or 4 characters of serialNumber (depending of if serialNumber is 11 or 12 characters long)
  tell application "System Events" to do shell script "cd " & tmpFiles & ";curl https://support-sp.apple.com/sp/product?cc=" & endSerial -- downloads xml file that contains year number from apple using endSerial
  set xmlData to text item 11 of result -- sets xmlData to xml data containing model year
  set AppleScript's text item delimiters to oldDelims -- set text delimiters to oldDelims
end getModelYear

getSystemInfo()
getModelYear()
