' ÿ5000�����ؽ������Ƿ���ָ�����̣��еĻ�����ֹ�������Ҫ��ֹ�˼�س�����������������ֶ���ֹwscript.exe
' ���ÿ�������:�����ļ��ŵ�C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
dim qobj,pipe,good
do
good="."
set qobj=getobject("winmgmts:\\"&good&"\root\cimv2")
'ָ���������֣�
set pipe=qobj.execquery("select * from win32_process where name='portal.exe'")
for each i in pipe
i.terminate()
next
'����ÿ���ٺ����أ�
wscript.sleep 5000
loop