@echo off
cd %~dp0
::chcp 65001 �ܽ���������룬����Щϵͳ���ֻ��ΪӢ�ģ����ʹ��תANSI��������������

set toolExe=.\police\data\tools\ExcelParseTool\ExcelParseTool\bin\Release\ExcelParseTool.exe
set sourcePath=.\police\data\excelParseOutput\csCode
set byteFilePath=.\police\data\excelParseOutput\byteFiles

:: ��һ������,���������ֽ��ļ� 0:���ɵ��ļ�������ƫ����Ϣ 1:��ÿ�����׵�ƫ������ 2:��ÿ����Ԫ�����ݵ�ƫ�����ݣ�������׵�ƫ�ƣ�

del /s/Q %sourcePath%>null
del /s/Q %byteFilePath%>null
del /s/Q ..\pasture\Assets\Resources\data>null

:: �ڶ�������,�������ɴ����ļ� 
:: 0:���ɵĴ����ļ����ȡ�������ݲ�����������������=�г������鳤��=��Ч�����г�
:: 1:ֻ����������������ƫ�����ݣ���˶�ȡʱ����һ��ȡһ�������ݣ���һ��Model�ṹ�� 
:: 2:���������������ƫ�����ݣ�������Ԫ��������׵�ƫ�ƣ�ͬʱ������ÿ��������Get������
::	 ���֧��ȡ�����һ�����ݣ���dictSceneObj.Get_ScaleY(id) ����ֻȡ����id��Ӧ��ScaleY���ݶ�����ȡ��������ģ��Model
:: *ע��*����һ������һ���� >= �ڶ�������
start /WAIT /B %toolExe% 0 0

xcopy /s/e/q/y %sourcePath%\*.* ..\pasture\Assets\hotfixScripts\AutoDict  
echo �ѽ����е��ֵ����һ���ֵ��������������Ŀ
xcopy /s/e/q/y .\police\data\excelParseOutput\byteFiles\*.* ..\pasture\Assets\Resources\data
echo �ѽ����е��ֽ������ļ���������Ŀ

del .\null

::xcopy /s/e/q/y %sourcePath%\*.* C:\Users\Administrator\Desktop\UnityTest\Assets\Scripts\AutoDict
::xcopy /s/e/q/y .\police\data\excelParseOutput\byteFiles\*.* C:\Users\Administrator\Desktop\UnityTest\Assets\Resources\data

pause