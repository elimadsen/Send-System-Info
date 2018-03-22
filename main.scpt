set systemInfo to system info
set memory to (((physical memory of systemInfo ÷ 1000) round) as text) & "GB RAM"
set cpu to ((CPU speed of systemInfo ÷ 1000) as text) & "GHz" 
log memory
log cpu
