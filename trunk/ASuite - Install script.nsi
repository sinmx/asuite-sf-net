; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "ASuite"
!define PRODUCT_VERSION "1.5.1.1"
!define PRODUCT_PUBLISHER "SalvadorSoftware"
!define PRODUCT_WEB_SITE "http://www.salvadorsoftware.com/"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\ASuite.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "release\Docs\license.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\ASuite.exe"
!define MUI_FINISHPAGE_SHOWREADME "$INSTDIR\Docs\readme.rtf"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "ASuite1511.exe"
InstallDir "$PROGRAMFILES\ASuite"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "SezionePrincipale" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite try
  File "release\ASuite.exe"
  File "release\libmng.dll"
  IfSilent +6
    CreateDirectory "$SMPROGRAMS\ASuite"
    CreateShortCut "$SMPROGRAMS\ASuite\SalvadorSoftware Site.lnk" "$INSTDIR\SalvadorSoftware Site.url"
    CreateShortCut "$SMPROGRAMS\ASuite\Project ASuite.lnk" "$INSTDIR\Project ASuite.url"
    CreateShortCut "$SMPROGRAMS\ASuite\ASuite.lnk" "$INSTDIR\ASuite.exe"
    CreateShortCut "$DESKTOP\ASuite.lnk" "$INSTDIR\ASuite.exe"
  
  SetOutPath "$INSTDIR\Icons"
  File "release\Icons\asuite.cur"
  File "release\Icons\asuite.ico"
  File "release\Icons\1.ico"
  File "release\Icons\10.ico"
  File "release\Icons\11.ico"
  File "release\Icons\12.ico"
  File "release\Icons\13.ico"
  File "release\Icons\14.ico"
  File "release\Icons\2.ico"
  File "release\Icons\3.ico"
  File "release\Icons\4.ico"
  File "release\Icons\5.ico"
  File "release\Icons\6.ico"
  File "release\Icons\7.ico"
  File "release\Icons\8.ico"
  File "release\Icons\9.ico"
  SetOutPath "$INSTDIR\Lang"
  File "release\Lang\english.xml"
  File "release\Lang\french.xml"  
  File "release\Lang\italiano.xml"
  File "release\Lang\magyar.xml" 
  File "release\Lang\nederlands.xml"
  File "release\Lang\polish.xml"
  File "release\Lang\spanish.xml"
  File "release\Lang\portuguese.xml"
  File "release\Lang\turkce.xml"
  File "release\Lang\german.xml"
  File "release\Lang\czech.xml"
  File "release\Lang\danish.xml"
  File "release\Lang\korean.xml"
  File "release\Lang\romana.xml"
  File "release\Lang\slovak.xml"
  File "release\Lang\norwegian.xml"
  File "release\Lang\japanese.xml"
  File "release\Lang\arabic.xml"
  File "release\Lang\brazilian_portuguese.xml"
  SetOutPath "$INSTDIR\Docs"
  File "release\Docs\leggimi.rtf"
  File "release\Docs\license.txt"
  File "release\Docs\licensz.txt"
  File "release\Docs\licenza.txt"
  File "release\Docs\readme.rtf"
  File "release\Docs\liesmich.rtf"
  File "release\Docs\Lisez moi.rtf"
  File "release\Docs\olvassel.rtf"
  File "release\Docs\SalvadorSoftware Site.url"
  File "release\Docs\Project ASuite.url"
  SetOutPath "$INSTDIR\MenuThemes"
  SetOutPath "$INSTDIR\MenuThemes\Default"
  File "release\MenuThemes\Default\PersonalPicture.jpg"
  File "release\MenuThemes\Default\PersonalPicture-Female.jpg"
  File "release\MenuThemes\Default\readme.txt"
  SetOutPath "$INSTDIR\MenuThemes\Default\IconTheme"
  File "release\MenuThemes\Default\IconTheme\asuite.ico"
  File "release\MenuThemes\Default\IconTheme\documents.ico"
  File "release\MenuThemes\Default\IconTheme\explore.ico"
  File "release\MenuThemes\Default\IconTheme\help.ico"
  File "release\MenuThemes\Default\IconTheme\music.ico"
  File "release\MenuThemes\Default\IconTheme\options.ico"
  File "release\MenuThemes\Default\IconTheme\pictures.ico"
  File "release\MenuThemes\Default\IconTheme\search.ico"
  File "release\MenuThemes\Default\IconTheme\videos.ico"
  SetOutPath "$INSTDIR\MenuThemes\Default\Theme"
  File "release\MenuThemes\Default\Theme\background.png"
  File "release\MenuThemes\Default\Theme\divider.jpg"
  File "release\MenuThemes\Default\Theme\drive_space_slider.bmp"
  SetOutPath "$INSTDIR\MenuThemes\Blacksuite"
  File "release\MenuThemes\Blacksuite\PersonalPicture.jpg"
  File "release\MenuThemes\Blacksuite\Preview.jpg"
  File "release\MenuThemes\Blacksuite\readme.txt"
  SetOutPath "$INSTDIR\MenuThemes\Blacksuite\IconTheme"
  File "release\MenuThemes\Blacksuite\IconTheme\asuite.ico"
  File "release\MenuThemes\Blacksuite\IconTheme\documents.ico"
  File "release\MenuThemes\Blacksuite\IconTheme\explore.ico"
  File "release\MenuThemes\Blacksuite\IconTheme\help.ico"
  File "release\MenuThemes\Blacksuite\IconTheme\music.ico"
  File "release\MenuThemes\Blacksuite\IconTheme\options.ico"
  File "release\MenuThemes\Blacksuite\IconTheme\pictures.ico"
  File "release\MenuThemes\Blacksuite\IconTheme\search.ico"
  File "release\MenuThemes\Blacksuite\IconTheme\videos.ico"
  SetOutPath "$INSTDIR\MenuThemes\Blacksuite\Theme"
  File "release\MenuThemes\Blacksuite\Theme\background.jpg"
  File "release\MenuThemes\Blacksuite\Theme\divider.jpg"
  File "release\MenuThemes\Blacksuite\Theme\drive_space_slider.bmp"
SectionEnd

Section -AdditionalIcons
  IfSilent +3
    SetOutPath $INSTDIR
    CreateShortCut "$SMPROGRAMS\ASuite\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  IfSilent +9
    WriteUninstaller "$INSTDIR\uninst.exe"
    WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\ASuite.exe"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\ASuite.exe"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\Docs\SalvadorSoftware Site.url"
  Delete "$INSTDIR\Docs\Project ASuite.url"
  Delete "$INSTDIR\Docs\readme.rtf"
  Delete "$INSTDIR\Docs\licenza.txt"
  Delete "$INSTDIR\Docs\license.txt"
  Delete "$INSTDIR\Docs\leggimi.rtf"
  Delete "$INSTDIR\Docs\liesmich.rtf"
  Delete "$INSTDIR\Docs\Lisez moi.rtf"
  Delete "$INSTDIR\Docs\Licensz.txt"
  Delete "$INSTDIR\Docs\olvassel.rtf"
  Delete "$INSTDIR\Lang\arabic.xml"
  Delete "$INSTDIR\Lang\brazilian_portuguese.xml"
  Delete "$INSTDIR\Lang\japanese.xml"
  Delete "$INSTDIR\Lang\danish.xml"
  Delete "$INSTDIR\Lang\korean.xml"
  Delete "$INSTDIR\Lang\romana.xml"
  Delete "$INSTDIR\Lang\slovak.xml"
  Delete "$INSTDIR\Lang\norwegian.xml"
  Delete "$INSTDIR\Lang\czech.xml"
  Delete "$INSTDIR\Lang\portuguese.xml"
  Delete "$INSTDIR\Lang\turkce.xml"
  Delete "$INSTDIR\Lang\german.xml"
  Delete "$INSTDIR\Lang\spanish.xml"
  Delete "$INSTDIR\Lang\polish.xml"
  Delete "$INSTDIR\Lang\nederlands.xml"
  Delete "$INSTDIR\Lang\magyar.xml"
  Delete "$INSTDIR\Lang\italiano.xml"
  Delete "$INSTDIR\Lang\french.xml" 
  Delete "$INSTDIR\Lang\english.xml"
  Delete "$INSTDIR\Icons\9.ico"
  Delete "$INSTDIR\Icons\8.ico"
  Delete "$INSTDIR\Icons\7.ico"
  Delete "$INSTDIR\Icons\6.ico"
  Delete "$INSTDIR\Icons\5.ico"
  Delete "$INSTDIR\Icons\4.ico"
  Delete "$INSTDIR\Icons\3.ico"
  Delete "$INSTDIR\Icons\2.ico"
  Delete "$INSTDIR\Icons\10.ico"
  Delete "$INSTDIR\Icons\11.ico"
  Delete "$INSTDIR\Icons\12.ico"
  Delete "$INSTDIR\Icons\13.ico"
  Delete "$INSTDIR\Icons\14.ico"
  Delete "$INSTDIR\Icons\1.ico"
  Delete "$INSTDIR\Icons\asuite.cur"
  Delete "$INSTDIR\Icons\asuite.ico"
  Delete "$INSTDIR\MenuThemes\Default\PersonalPicture.jpg"
  Delete "$INSTDIR\MenuThemes\Default\PersonalPicture-Female.jpg"
  Delete "$INSTDIR\MenuThemes\Default\readme.txt"
  Delete "$INSTDIR\MenuThemes\Default\IconTheme\asuite.ico"
  Delete "$INSTDIR\MenuThemes\Default\IconTheme\documents.ico"
  Delete "$INSTDIR\MenuThemes\Default\IconTheme\explore.ico"
  Delete "$INSTDIR\MenuThemes\Default\IconTheme\help.ico"
  Delete "$INSTDIR\MenuThemes\Default\IconTheme\music.ico"
  Delete "$INSTDIR\MenuThemes\Default\IconTheme\options.ico"
  Delete "$INSTDIR\MenuThemes\Default\IconTheme\pictures.ico"
  Delete "$INSTDIR\MenuThemes\Default\IconTheme\search.ico"
  Delete "$INSTDIR\MenuThemes\Default\IconTheme\videos.ico"
  Delete "$INSTDIR\MenuThemes\Default\Theme\background.png"
  Delete "$INSTDIR\MenuThemes\Default\Theme\divider.jpg"
  Delete "$INSTDIR\MenuThemes\Default\Theme\drive_space_slider.bmp"
  Delete "$INSTDIR\MenuThemes\Blacksuite\PersonalPicture.jpg"
  Delete "$INSTDIR\MenuThemes\Blacksuite\Preview.jpg"
  Delete "$INSTDIR\MenuThemes\Blacksuite\readme.txt"
  Delete "$INSTDIR\MenuThemes\Blacksuite\IconTheme\asuite.ico"
  Delete "$INSTDIR\MenuThemes\Blacksuite\IconTheme\documents.ico"
  Delete "$INSTDIR\MenuThemes\Blacksuite\IconTheme\explore.ico"
  Delete "$INSTDIR\MenuThemes\Blacksuite\IconTheme\help.ico"
  Delete "$INSTDIR\MenuThemes\Blacksuite\IconTheme\music.ico"
  Delete "$INSTDIR\MenuThemes\Blacksuite\IconTheme\options.ico"
  Delete "$INSTDIR\MenuThemes\Blacksuite\IconTheme\pictures.ico"
  Delete "$INSTDIR\MenuThemes\Blacksuite\IconTheme\search.ico"
  Delete "$INSTDIR\MenuThemes\Blacksuite\IconTheme\videos.ico"
  Delete "$INSTDIR\MenuThemes\Blacksuite\Theme\background.jpg"
  Delete "$INSTDIR\MenuThemes\Blacksuite\Theme\divider.jpg"
  Delete "$INSTDIR\MenuThemes\Blacksuite\Theme\drive_space_slider.bmp"
  Delete "$INSTDIR\ASuite.exe"
  Delete "$INSTDIR\ASuite.xml"

  Delete "$SMPROGRAMS\ASuite\Uninstall.lnk"
  Delete "$DESKTOP\ASuite.lnk"
  Delete "$SMPROGRAMS\ASuite\ASuite.lnk"
  Delete "$SMPROGRAMS\ASuite\SalvadorSoftware Site.lnk"
  Delete "$SMPROGRAMS\ASuite\Project ASuite.lnk"

  RMDir "$SMPROGRAMS\ASuite"
  RMDir "$INSTDIR\Lang"
  RMDir "$INSTDIR\Icons"
  RMDir /r "$INSTDIR\Backup"
  RMDir /r "$INSTDIR\Cache"
  RMDir "$INSTDIR\Docs"
  RMDir "$INSTDIR\MenuThemes\Default\IconTheme"
  RMDir "$INSTDIR\MenuThemes\Default\Theme"
  RMDir "$INSTDIR\MenuThemes\Default"
  RMDir "$INSTDIR\MenuThemes\Blacksuite\IconTheme"
  RMDir "$INSTDIR\MenuThemes\Blacksuite\Theme"
  RMDir "$INSTDIR\MenuThemes\Blacksuite"
  RMDir "$INSTDIR\MenuThemes"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd