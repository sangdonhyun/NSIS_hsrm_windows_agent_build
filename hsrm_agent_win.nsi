Unicode True
; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "HSRM_Agent_win"
!define PRODUCT_VERSION "1.0"
!define PRODUCT_PUBLISHER "Flea Comunications Inc."
!define PRODUCT_WEB_SITE "http://www.fletacom.com"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\AgentConfigGen.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Language Selection Dialog Settings
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "..\agentV8\dist\license.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\AgentConfigGen.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "Armenian"
!insertmacro MUI_LANGUAGE "Korean"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "Setup.exe"
InstallDir "$PROGRAMFILES\HSRM_Agent_win"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite try
  File "..\agentV8\dist\AgentConfigGen.exe"
  SetOutPath "$INSTDIR\config"
  File "..\agentV8\dist\config\altibase.cfg"
  File "..\agentV8\dist\config\custom_path.cfg"
  File "..\agentV8\dist\config\dbms.cfg"
  File "..\agentV8\dist\config\disk_info_posix.cfg"
  File "..\agentV8\dist\config\disk_info_posix.cfgc"
  File "..\agentV8\dist\config\disk_info_win32.cfg"
  File "..\agentV8\dist\config\emcClone.cfg"
  File "..\agentV8\dist\config\fleta.cfg"
  File "..\agentV8\dist\config\fleta_config.cfg"
  File "..\agentV8\dist\config\HSRM.ini"
  File "..\agentV8\dist\config\jdbc.cfg"
  File "..\agentV8\dist\config\logcode.cfg"
  File "..\agentV8\dist\config\oracle.cfg"
  File "..\agentV8\dist\config\sched.date"
  File "..\agentV8\dist\config\sched.format"
  File "..\agentV8\dist\config\sched_symevent.format"
  File "..\agentV8\dist\config\tibero.cfg"
  SetOutPath "$INSTDIR\config\vendor"
  File "..\agentV8\dist\config\vendor\AIX_v8.cfg"
  File "..\agentV8\dist\config\vendor\emcClone.cfg"
  File "..\agentV8\dist\config\vendor\HP-UX_v8.cfg"
  File "..\agentV8\dist\config\vendor\Linux_v8.cfg"
  File "..\agentV8\dist\config\vendor\SunOS_v8.cfg"
  File "..\agentV8\dist\config\vendor\windows.cfg"
  File "..\agentV8\dist\config\vendor\windows.WMI.cfg"
  SetOutPath "$INSTDIR"
  File "..\agentV8\dist\configGen.exe"
  File "..\agentV8\dist\fletaDaemonCheck.bat"
  File "..\agentV8\dist\fletaReStart.bat"
  File "..\agentV8\dist\fletaStart.bat"
  File "..\agentV8\dist\fletaStop.bat"
  File "..\agentV8\dist\fleta_agent_info.exe"
  File "..\agentV8\dist\fleta_configGen.exe"
  File "..\agentV8\dist\fleta_daemon.exe"
  File "..\agentV8\dist\fleta_diskinfo.exe"
  CreateDirectory "$SMPROGRAMS\HSRM_Agent_win"
  CreateShortCut "$SMPROGRAMS\HSRM_Agent_win\fleta_diskinfo.lnk" "$INSTDIR\fleta_diskinfo.exe"
  File "..\agentV8\dist\fleta_schedule.exe"
  File "..\agentV8\dist\fleta_sym_event.exe"
  SetOutPath "$INSTDIR\lib"
  File "..\agentV8\dist\lib\bz2.pyd"
  File "..\agentV8\dist\lib\CRYPT32.dll"
  File "..\agentV8\dist\lib\library.zip"
  File "..\agentV8\dist\lib\pyexpat.pyd"
  File "..\agentV8\dist\lib\pythoncom27.dll"
  File "..\agentV8\dist\lib\pywintypes27.dll"
  File "..\agentV8\dist\lib\select.pyd"
  File "..\agentV8\dist\lib\unicodedata.pyd"
  File "..\agentV8\dist\lib\win32api.pyd"
  File "..\agentV8\dist\lib\win32pipe.pyd"
  File "..\agentV8\dist\lib\win32ui.pyd"
  File "..\agentV8\dist\lib\_ctypes.pyd"
  File "..\agentV8\dist\lib\_hashlib.pyd"
  File "..\agentV8\dist\lib\_socket.pyd"
  File "..\agentV8\dist\lib\_ssl.pyd"
  File "..\agentV8\dist\lib\_win32sysloader.pyd"
  SetOutPath "$INSTDIR\logs"
  File "..\agentV8\dist\logs\20191022_CRON_ACCESS.log"
  File "..\agentV8\dist\logs\20191022_CRON_ERROR.log"
  File "..\agentV8\dist\logs\20191209_AGENT_ERROR.log"
  SetOutPath "$INSTDIR\pid"
  File "..\agentV8\dist\pid\fleta_daemon.pid"
  File "..\agentV8\dist\pid\fleta_daemon.pidc"
  File "..\agentV8\dist\pid\fleta_schedule.pid"
  File "..\agentV8\dist\pid\fleta_schedule.pidc"
  SetOutPath "$INSTDIR"
  File "..\agentV8\dist\python27.dll"
  SetOutPath "$INSTDIR\scripts\AIX"
  File "..\agentV8\dist\scripts\AIX\inq"
  File "..\agentV8\dist\scripts\AIX\inqraid"
  SetOutPath "$INSTDIR\scripts"
  File "..\agentV8\dist\scripts\awk.exe"
  File "..\agentV8\dist\scripts\cat.exe"
  File "..\agentV8\dist\scripts\grep.exe"
  SetOutPath "$INSTDIR\scripts\HP-UX"
  File "..\agentV8\dist\scripts\HP-UX\inq"
  File "..\agentV8\dist\scripts\HP-UX\inqraid"
  SetOutPath "$INSTDIR\scripts"
  File "..\agentV8\dist\scripts\inqraid.exe"
  SetOutPath "$INSTDIR\scripts\jar"
  File "..\agentV8\dist\scripts\jar\ojdbc5.jar"
  File "..\agentV8\dist\scripts\jar\ojdbc6.jar"
  File "..\agentV8\dist\scripts\jar\ojdbc7.jar"
  File "..\agentV8\dist\scripts\jar\ojdbc8.jar"
  SetOutPath "$INSTDIR\scripts\Linux"
  File "..\agentV8\dist\scripts\Linux\inq"
  File "..\agentV8\dist\scripts\Linux\inqraid"
  SetOutPath "$INSTDIR\scripts"
  File "..\agentV8\dist\scripts\sh.exe"
  SetOutPath "$INSTDIR\scripts\SunOS"
  File "..\agentV8\dist\scripts\SunOS\inq"
  File "..\agentV8\dist\scripts\SunOS\inqraid"
  SetOutPath "$INSTDIR\scripts"
  File "..\agentV8\dist\scripts\tail.exe"
  File "..\agentV8\dist\scripts\win32gnu.dll"
  SetOutPath "$INSTDIR\sql"
  File "..\agentV8\dist\sql\altibase_disk_tablespace_439.sql"
  File "..\agentV8\dist\sql\altibase_disk_tablespace_515.sql"
  File "..\agentV8\dist\sql\altibase_disk_tablespace_533_535.sql"
  File "..\agentV8\dist\sql\altibase_disk_tablespace_533_535.sqlc"
  File "..\agentV8\dist\sql\altibase_disk_tablespace_551_611_631.sql"
  File "..\agentV8\dist\sql\altibase_memory_tablespace_439.sql"
  File "..\agentV8\dist\sql\altibase_memory_tablespace_515.sql"
  File "..\agentV8\dist\sql\altibase_memory_tablespace_533_535.sql"
  File "..\agentV8\dist\sql\altibase_memory_tablespace_533_535.sqlc"
  File "..\agentV8\dist\sql\altibase_memory_tablespace_551_611_631.sql"
  File "..\agentV8\dist\sql\altibase_version.sql"
  File "..\agentV8\dist\sql\altibase_version.sqlc"
  File "..\agentV8\dist\sql\asm.sql"
  File "..\agentV8\dist\sql\dsize.sql"
  File "..\agentV8\dist\sql\ora.sql"
  File "..\agentV8\dist\sql\oracle_version.sql"
  File "..\agentV8\dist\sql\param.sql"
  File "..\agentV8\dist\sql\tibero.sql"
  File "..\agentV8\dist\sql\tibero_version.sql"
  File "..\agentV8\dist\sql\tsize.sql"
  File "..\agentV8\dist\sql\udb_v10.sql"
  File "..\agentV8\dist\sql\udb_v8.sql"
  File "..\agentV8\dist\sql\udb_v9.sql"
  SetOutPath "$INSTDIR"
  File "..\agentV8\dist\version_cfg"
  File "..\agentV8\dist\version_cfgc"
  File "..\agentV8\dist\version_check.exe"
  File "..\agentV8\dist\version_module"
  File "..\agentV8\dist\version_modulec"
SectionEnd

Section -AdditionalIcons
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\HSRM_Agent_win\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\HSRM_Agent_win\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\AgentConfigGen.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\AgentConfigGen.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name)??(??) ?????? ??????????????."
FunctionEnd

Function un.onInit
!insertmacro MUI_UNGETLANGUAGE
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "$(^Name)??(??) ?????????????????" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\version_modulec"
  Delete "$INSTDIR\version_module"
  Delete "$INSTDIR\version_check.exe"
  Delete "$INSTDIR\version_cfgc"
  Delete "$INSTDIR\version_cfg"
  Delete "$INSTDIR\sql\udb_v9.sql"
  Delete "$INSTDIR\sql\udb_v8.sql"
  Delete "$INSTDIR\sql\udb_v10.sql"
  Delete "$INSTDIR\sql\tsize.sql"
  Delete "$INSTDIR\sql\tibero_version.sql"
  Delete "$INSTDIR\sql\tibero.sql"
  Delete "$INSTDIR\sql\param.sql"
  Delete "$INSTDIR\sql\oracle_version.sql"
  Delete "$INSTDIR\sql\ora.sql"
  Delete "$INSTDIR\sql\dsize.sql"
  Delete "$INSTDIR\sql\asm.sql"
  Delete "$INSTDIR\sql\altibase_version.sqlc"
  Delete "$INSTDIR\sql\altibase_version.sql"
  Delete "$INSTDIR\sql\altibase_memory_tablespace_551_611_631.sql"
  Delete "$INSTDIR\sql\altibase_memory_tablespace_533_535.sqlc"
  Delete "$INSTDIR\sql\altibase_memory_tablespace_533_535.sql"
  Delete "$INSTDIR\sql\altibase_memory_tablespace_515.sql"
  Delete "$INSTDIR\sql\altibase_memory_tablespace_439.sql"
  Delete "$INSTDIR\sql\altibase_disk_tablespace_551_611_631.sql"
  Delete "$INSTDIR\sql\altibase_disk_tablespace_533_535.sqlc"
  Delete "$INSTDIR\sql\altibase_disk_tablespace_533_535.sql"
  Delete "$INSTDIR\sql\altibase_disk_tablespace_515.sql"
  Delete "$INSTDIR\sql\altibase_disk_tablespace_439.sql"
  Delete "$INSTDIR\scripts\win32gnu.dll"
  Delete "$INSTDIR\scripts\tail.exe"
  Delete "$INSTDIR\scripts\SunOS\inqraid"
  Delete "$INSTDIR\scripts\SunOS\inq"
  Delete "$INSTDIR\scripts\sh.exe"
  Delete "$INSTDIR\scripts\Linux\inqraid"
  Delete "$INSTDIR\scripts\Linux\inq"
  Delete "$INSTDIR\scripts\jar\ojdbc8.jar"
  Delete "$INSTDIR\scripts\jar\ojdbc7.jar"
  Delete "$INSTDIR\scripts\jar\ojdbc6.jar"
  Delete "$INSTDIR\scripts\jar\ojdbc5.jar"
  Delete "$INSTDIR\scripts\inqraid.exe"
  Delete "$INSTDIR\scripts\HP-UX\inqraid"
  Delete "$INSTDIR\scripts\HP-UX\inq"
  Delete "$INSTDIR\scripts\grep.exe"
  Delete "$INSTDIR\scripts\cat.exe"
  Delete "$INSTDIR\scripts\awk.exe"
  Delete "$INSTDIR\scripts\AIX\inqraid"
  Delete "$INSTDIR\scripts\AIX\inq"
  Delete "$INSTDIR\python27.dll"
  Delete "$INSTDIR\pid\fleta_schedule.pidc"
  Delete "$INSTDIR\pid\fleta_schedule.pid"
  Delete "$INSTDIR\pid\fleta_daemon.pidc"
  Delete "$INSTDIR\pid\fleta_daemon.pid"
  Delete "$INSTDIR\logs\20191209_AGENT_ERROR.log"
  Delete "$INSTDIR\logs\20191022_CRON_ERROR.log"
  Delete "$INSTDIR\logs\20191022_CRON_ACCESS.log"
  Delete "$INSTDIR\lib\_win32sysloader.pyd"
  Delete "$INSTDIR\lib\_ssl.pyd"
  Delete "$INSTDIR\lib\_socket.pyd"
  Delete "$INSTDIR\lib\_hashlib.pyd"
  Delete "$INSTDIR\lib\_ctypes.pyd"
  Delete "$INSTDIR\lib\win32ui.pyd"
  Delete "$INSTDIR\lib\win32pipe.pyd"
  Delete "$INSTDIR\lib\win32api.pyd"
  Delete "$INSTDIR\lib\unicodedata.pyd"
  Delete "$INSTDIR\lib\select.pyd"
  Delete "$INSTDIR\lib\pywintypes27.dll"
  Delete "$INSTDIR\lib\pythoncom27.dll"
  Delete "$INSTDIR\lib\pyexpat.pyd"
  Delete "$INSTDIR\lib\library.zip"
  Delete "$INSTDIR\lib\CRYPT32.dll"
  Delete "$INSTDIR\lib\bz2.pyd"
  Delete "$INSTDIR\fleta_sym_event.exe"
  Delete "$INSTDIR\fleta_schedule.exe"
  Delete "$INSTDIR\fleta_diskinfo.exe"
  Delete "$INSTDIR\fleta_daemon.exe"
  Delete "$INSTDIR\fleta_configGen.exe"
  Delete "$INSTDIR\fleta_agent_info.exe"
  Delete "$INSTDIR\fletaStop.bat"
  Delete "$INSTDIR\fletaStart.bat"
  Delete "$INSTDIR\fletaReStart.bat"
  Delete "$INSTDIR\fletaDaemonCheck.bat"
  Delete "$INSTDIR\configGen.exe"
  Delete "$INSTDIR\config\vendor\windows.WMI.cfg"
  Delete "$INSTDIR\config\vendor\windows.cfg"
  Delete "$INSTDIR\config\vendor\SunOS_v8.cfg"
  Delete "$INSTDIR\config\vendor\Linux_v8.cfg"
  Delete "$INSTDIR\config\vendor\HP-UX_v8.cfg"
  Delete "$INSTDIR\config\vendor\emcClone.cfg"
  Delete "$INSTDIR\config\vendor\AIX_v8.cfg"
  Delete "$INSTDIR\config\tibero.cfg"
  Delete "$INSTDIR\config\sched_symevent.format"
  Delete "$INSTDIR\config\sched.format"
  Delete "$INSTDIR\config\sched.date"
  Delete "$INSTDIR\config\oracle.cfg"
  Delete "$INSTDIR\config\logcode.cfg"
  Delete "$INSTDIR\config\jdbc.cfg"
  Delete "$INSTDIR\config\HSRM.ini"
  Delete "$INSTDIR\config\fleta_config.cfg"
  Delete "$INSTDIR\config\fleta.cfg"
  Delete "$INSTDIR\config\emcClone.cfg"
  Delete "$INSTDIR\config\disk_info_win32.cfg"
  Delete "$INSTDIR\config\disk_info_posix.cfgc"
  Delete "$INSTDIR\config\disk_info_posix.cfg"
  Delete "$INSTDIR\config\dbms.cfg"
  Delete "$INSTDIR\config\custom_path.cfg"
  Delete "$INSTDIR\config\altibase.cfg"
  Delete "$INSTDIR\AgentConfigGen.exe"

  Delete "$SMPROGRAMS\HSRM_Agent_win\Uninstall.lnk"
  Delete "$SMPROGRAMS\HSRM_Agent_win\Website.lnk"
  Delete "$SMPROGRAMS\HSRM_Agent_win\fleta_diskinfo.lnk"

  RMDir "$SMPROGRAMS\HSRM_Agent_win"
  RMDir "$INSTDIR\sql"
  RMDir "$INSTDIR\scripts\SunOS"
  RMDir "$INSTDIR\scripts\Linux"
  RMDir "$INSTDIR\scripts\jar"
  RMDir "$INSTDIR\scripts\HP-UX"
  RMDir "$INSTDIR\scripts\AIX"
  RMDir "$INSTDIR\scripts"
  RMDir "$INSTDIR\pid"
  RMDir "$INSTDIR\logs"
  RMDir "$INSTDIR\lib"
  RMDir "$INSTDIR\config\vendor"
  RMDir "$INSTDIR\config"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd