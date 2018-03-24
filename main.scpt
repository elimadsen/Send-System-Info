global modelName, modelIdentifier, processorName, processorSpeed, numProcessors, numCores, memory, serialNumber, configCode

on getSystemInfo() -- gets hardware info from system_profiler and saves it to variables
	set AppleScript's text item delimiters to {":"} -- set new text delimiters to ":"
	set systemInfo to every paragraph of (do shell script "system_profiler SPHardwareDataType") -- get raw hardware data
	set specsList to {"Model Name", "Model Identifier", "Processor Name", "Processor Speed", "Number of Processors", "number of Cores", "Memory", "serial Number"} -- define list of specs to get
	set specsData to ""
	repeat with systemItem in systemInfo -- repeat with each item of raw hardware data
		repeat with specsItem in specsList -- repeat with list of specs to get
			if systemItem contains specsItem then -- if raw data conatains desired specs then add it to a variable
				set systemItem to 2nd text item of systemItem
				set specsData to specsData & text 2 through (length of systemItem) of systemItem & ":" -- remove space from beginning
			end if
		end repeat
	end repeat
	set {modelName, modelIdentifier, processorName, processorSpeed, numProcessors, numCores, memory, serialNumber} to text items of specsData -- set all variables to hardware info from above
end getSystemInfo

on getModelInfo()
	set AppleScript's text item delimiters to {"><"}
	set tmpFiles to POSIX path of (path to temporary items) -- gets temporary files path
	set endSerial to text -4 through -1 of serialNumber
	tell application "System Events" to do shell script "cd " & tmpFiles & ";curl https://support-sp.apple.com/sp/product?cc=" & endSerial
	set xmlText to result
	if xmlText contains "error" then
		set endSerial to text -3 through -1 of endSerial
		tell application "System Events" to do shell script "cd " & tmpFiles & ";curl https://support-sp.apple.com/sp/product?cc=" & endSerial
		set xmlText to result
	end if
	set xmlText to every text item of xmlText
	repeat with textItem in xmlText
		if textItem contains "configCode" then
			log textItem
			set AppleScript's text item delimiters to {"<",">"}
			set xmlData to every text item of textItem
			set AppleScript's text item delimiters to {", "}
			set configCode to text item 2 of xmlData
		end if
	end repeat
end getModelInfo

set oldDelims to AppleScript's text item delimiters -- save current text delimiters to oldDelims
getSystemInfo()
getModelInfo()
set AppleScript's text item delimiters to oldDelims -- set text delimiters to oldDelims

log {modelName, modelIdentifier, processorName, processorSpeed, numProcessors, numCores, memory, serialNumber, configCode}
