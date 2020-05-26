' 每5000毫秒监控进程中是否有指定进程，有的话就终止。如果需要终止此监控程序，在任务管理器中手动终止wscript.exe
' 设置开机自启:将此文件放到C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
dim qobj,pipe,good
do
good="."
set qobj=getobject("winmgmts:\\"&good&"\root\cimv2")
'指定进程名字：
set pipe=qobj.execquery("select * from win32_process where name='portal.exe'")
for each i in pipe
i.terminate()
next
'设置每多少毫秒监控：
wscript.sleep 5000
loop