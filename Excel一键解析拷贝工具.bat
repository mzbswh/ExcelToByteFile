@echo off
cd %~dp0
::chcp 65001 �ܽ���������룬����Щϵͳ���ֻ��ΪӢ�ģ����ʹ��תANSI��������������

set toolExe=C:\Users\mzbswh\Desktop\Pub\ExcelToByteFile.exe

:: ��һ������,���������ֽ��ļ� 0:���ɵ��ļ�������ƫ����Ϣ 1:��ÿ�����׵�ƫ������ 2:��ÿ����Ԫ�����ݵ�ƫ�����ݣ�������׵�ƫ�ƣ�

start %toolExe% -e D:\Unity\Projects\Pasture\Tools\police\data\data -o .\out -c .\out
