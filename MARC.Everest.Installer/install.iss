; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

; This install script requires the installsupp.7z file to be extracted in the parent directory to this file.
; For example: If this script is in C:\test\install\ then the files should be extracted to C:\test\installsupp

#define INCLUDE_TOOLS

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{A21E1269-8CDE-43CD-B179-2B6674413081}
#ifdef TFSBuild
AppName=MARC-HI Everest Framework
AppVerName=MARC-HI Everest Framework (Nightly build {code:CurrentDate})
OutputBaseFilename=everest-nightly
InfoBeforeFile=..\gpmr\Readme-nightly.txt
#else
AppName=MARC-HI Everest Framework
AppVerName=1.2
OutputBaseFilename=everest-setup
;InfoBeforeFile=.\installsupp\release\AUG-CTP-2010.txt
#endif
LicenseFile=..\License.rtf
AppPublisher=Mohawk College of Applied Arts and Technology
AppPublisherURL=http://marc.mohawkcollege.ca/hi
AppSupportURL=http://marc.mohawkcollege.ca/hi
AppUpdatesURL=http://marc.mohawkcollege.ca/hi
DefaultDirName={pf}\Mohawk College\Everest
DefaultGroupName=Mohawk College\Everest
AllowNoIcons=yes
OutputDir=..\dist
;SetupIconFile=D:\work\appicon.ico
Compression=lzma
;Compression=none
SolidCompression=no
AppCopyright=Copyright (C) 2008-2012, Mohawk College of Applied Arts and Technology
WizardImageFile=install-logo.bmp
WizardSmallImageFile=install-logo-small.bmp

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Files]
Source: .\installsupp\netfx\dotNetFx35setup.exe; DestDir: {tmp} ; Flags: dontcopy

; R02.04.01
Source: .\installsupp\cs\MARC.Everest.RMIM.CA.R020401.dll; StrongAssemblyName: MARC.Everest.RMIM.CA.R020401.dll; DestDir: {app}\lib; Flags: ignoreversion; Components: api\ca
;Source: .\installsupp\cs\MARC.Everest.Formatters.XML.ITS1.R02.04.01.dll; DestDir: {app}\lib; Flags: ignoreversion; Components: api\ca
Source: .\installsupp\cs\MARC.Everest.RMIM.CA.R020401.xml; DestDir: {app}\lib; Flags: ignoreversion; Components: api\vs\ca
; R02.04.02
;Source: .\installsupp\cs\MARC.Everest.Formatters.XML.ITS1.R02.04.02.dll; DestDir: {app}\lib; Flags: ignoreversion; Components: api\ca
Source: .\installsupp\cs\MARC.Everest.RMIM.CA.R020402.dll; StrongAssemblyName: MARC.Everest.RMIM.CA.R020402.dll; DestDir: {app}\lib; Flags: ignoreversion; Components: api\ca
Source: .\installsupp\cs\MARC.Everest.RMIM.CA.R020402.xml; DestDir: {app}\lib; Flags: ignoreversion; Components: api\vs\ca
; R02.04.03
Source: .\installsupp\cs\MARC.Everest.RMIM.CA.R020403.dll; StrongAssemblyName: MARC.Everest.RMIM.CA.R020403.dll; DestDir: {app}\lib; Flags: ignoreversion; Components: api\ca
;Source: .\installsupp\cs\MARC.Everest.Formatters.XML.ITS1.R02.04.03.dll; DestDir: {app}\lib; Flags: ignoreversion; Components: api\ca
Source: .\installsupp\cs\MARC.Everest.RMIM.CA.R020403.xml; DestDir: {app}\lib; Flags: ignoreversion; Components: api\vs\ca
; NE2008
Source: .\installsupp\cs\MARC.Everest.RMIM.UV.NE2008.dll; StrongAssemblyName: MARC.Everest.RMIM.UV.NE2008.dll; DestDir: {app}\lib; Flags: ignoreversion; Components: api\ne
Source: .\installsupp\cs\MARC.Everest.RMIM.UV.NE2008.xml; DestDir: {app}\lib; Flags: ignoreversion; Components: api\vs\ne
;Source: .\installsupp\cs\MARC.Everest.Formatters.XML.ITS1.NE2008.dll; DestDir: {app}\lib; Flags: ignoreversion; Components: api\ne
; NE2010
Source: .\installsupp\cs\MARC.Everest.RMIM.UV.NE2010.dll; StrongAssemblyName: MARC.Everest.RMIM.UV.NE2010.dll; DestDir: {app}\lib; Flags: ignoreversion; Components: api\ne
;Source: .\installsupp\cs\MARC.Everest.Formatters.XML.ITS1.NE2010.dll; DestDir: {app}\lib; Flags: ignoreversion; Components: api\ne
Source: .\installsupp\cs\MARC.Everest.RMIM.UV.NE2010.xml; DestDir: {app}\lib; Flags: ignoreversion; Components: api\vs\ne
; CDA
Source: .\installsupp\cs\MARC.Everest.RMIM.UV.CDAr2.dll; StrongAssemblyName: MARC.Everest.RMIM.UV.CDAr2.dll; DestDir: {app}\lib; Flags: ignoreversion; Components: api\cda
;Source: .\installsupp\cs\MARC.Everest.Formatters.XML.ITS1.CDAr2.dll; DestDir: {app}\lib; Flags: ignoreversion; Components: api\cda
Source: .\installsupp\cs\MARC.Everest.RMIM.UV.CDAr2.xml; DestDir: {app}\lib; Flags: ignoreversion; Components: api\vs\cda

#ifdef TFSBuild
Source: {#buildpath}\MARC.Everest.dll; StrongAssemblyName: MARC.Everest; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: {#buildpath}\MARC.Everest.xml; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: {#buildpath}\MARC.Everest.Connectors.File.XML; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: {#buildpath}\MARC.Everest.Connectors.File.dll; StrongAssemblyName: MARC.Everest.Connectors.File; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: {#buildpath}\MARC.Everest.Connectors.MSMQ.XML; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: {#buildpath}\MARC.Everest.Connectors.MSMQ.dll; StrongAssemblyName: MARC.Everest.Connectors.MSMQ; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: {#buildpath}\MARC.Everest.Connectors.WCF.XML; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: {#buildpath}\MARC.Everest.Connectors.WCF.dll; StrongAssemblyName: MARC.Everest.Connectors.WCF; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: {#buildpath}\MARC.Everest.Formatters.XML.Datatypes.R1.XML; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: {#buildpath}\MARC.Everest.Formatters.XML.Datatypes.R1.dll; StrongAssemblyName: MARC.Everest.Formatters.XML.Datatypes.R1; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: {#buildpath}\MARC.Everest.Formatters.XML.Datatypes.R2.XML; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: {#buildpath}\MARC.Everest.Formatters.XML.Datatypes.R2.dll; StrongAssemblyName: MARC.Everest.Formatters.XML.Datatypes.R2; DestDir: {app}\lib; Flags: ignoreversion; Components: api
;Source: {#buildpath}\MARC.Everest.Formatters.XML.Datatypes.R1.CA.XML; DestDir: {app}\lib; Flags: ignoreversion; Components: api
;Source: {#buildpath}\MARC.Everest.Formatters.XML.Datatypes.R1.CA.dll; StrongAssemblyName: MARC.Everest.Formatters.XML.Datatypes.R1.CA; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: {#buildpath}\MARC.Everest.Formatters.XML.ITS1.XML; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: {#buildpath}\MARC.Everest.Formatters.XML.ITS1.dll; StrongAssemblyName: MARC.Everest.Formatters.XML.ITS1; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: {#buildpath}\MohawkCollege.Util.Console.Writer.xml; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: {#buildpath}\gpmr.exe; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: {#buildpath}\gpmr\bin\Release\xsl\*.xsl*; DestDir: {app}\xsl; Flags: ignoreversion recursesubdirs; Components: tools
Source: {#buildpath}\gpmr\bin\Release\xsl\*.txt*; DestDir: {app}\xsl; Flags: ignoreversion recursesubdirs; Components: tools
Source: {#buildpath}\gpmr.exe.config; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: {#buildpath}\gpmr\MohawkCollege.EHR.gpmr.Pipeline.Renderer.Deki\Resources\Clean.xml; DestDir: {app}\templates; Flags: ignoreversion; Components: tools
Source: {#buildpath}\gpmr\MohawkCollege.EHR.gpmr.Pipeline.Renderer.Deki\Resources\Classic.xml; DestDir: {app}\templates; Flags: ignoreversion; Components: tools
Source: {#buildpath}\MohawkCollege.EHR.gpmr.COR.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: {#buildpath}\MohawkCollege.EHR.gpmr.Pipeline.Compiler.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: {#buildpath}\MohawkCollege.EHR.gpmr.Pipeline.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: {#buildpath}\MohawkCollege.EHR.gpmr.Pipeline.Renderer.Deki.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: {#buildpath}\MohawkCollege.EHR.gpmr.Pipeline.Renderer.RimbaCS.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: {#buildpath}\MohawkCollege.EHR.HL7v3.MIF.MIF20.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: {#buildpath}\MohawkCollege.Util.Console.Parameters.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: {#buildpath}\MohawkCollege.Util.Console.Parameters.xml; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: {#buildpath}\MohawkCollege.Util.Console.Writer.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: {#buildpath}\MARC.Everest.xml; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: {#buildpath}\MARC.Everest.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: {#buildpath}\MohawkCollege.EHR.gpmr.Pipeline.Triggers.CorDelta.dll; DestDir: {app}; Flags: ignoreversion; Components: tools

#else
Source: ..\MARC.Everest\bin\Release\MARC.Everest.dll; StrongAssemblyName: MARC.Everest; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: ..\MARC.Everest\bin\Release\MARC.Everest.xml; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: ..\MARC.Everest.Connectors.File\bin\Release\MARC.Everest.Connectors.File.XML; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: ..\MARC.Everest.Connectors.File\bin\Release\MARC.Everest.Connectors.File.dll; StrongAssemblyName: MARC.Everest.Connectors.File; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: ..\MARC.Everest.Connectors.MSMQ\bin\Release\MARC.Everest.Connectors.MSMQ.XML; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: ..\MARC.Everest.Connectors.MSMQ\bin\Release\MARC.Everest.Connectors.MSMQ.dll; StrongAssemblyName: MARC.Everest.Connectors.MSMQ; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: ..\MARC.Everest.Connectors.WCF\bin\Release\MARC.Everest.Connectors.WCF.XML; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: ..\MARC.Everest.Connectors.WCF\bin\Release\MARC.Everest.Connectors.WCF.dll; StrongAssemblyName: MARC.Everest.Connectors.WCF; DestDir: {app}\lib; Flags: ignoreversion; Components: api
;Source: ..\MARC.Everest.Formatters.XML.Datatypes.R1.CA\bin\Release\MARC.Everest.Formatters.XML.Datatypes.R1.CA.XML; DestDir: {app}\lib; Flags: ignoreversion; Components: api
;Source: ..\MARC.Everest.Formatters.XML.Datatypes.R1.CA\bin\Release\MARC.Everest.Formatters.XML.Datatypes.R1.CA.dll; StrongAssemblyName: MARC.Everest.Formatters.XML.Datatypes.R1.CA; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: ..\MARC.Everest.Formatters.XML.Datatypes.R1\bin\Release\MARC.Everest.Formatters.XML.Datatypes.R1.XML; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: ..\MARC.Everest.Formatters.XML.Datatypes.R1\bin\Release\MARC.Everest.Formatters.XML.Datatypes.R1.dll; StrongAssemblyName: MARC.Everest.Formatters.XML.Datatypes.R1; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: ..\MARC.Everest.Formatters.XML.Datatypes.R2\bin\Release\MARC.Everest.Formatters.XML.Datatypes.R2.XML; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: ..\MARC.Everest.Formatters.XML.Datatypes.R2\bin\Release\MARC.Everest.Formatters.XML.Datatypes.R2.dll; StrongAssemblyName: MARC.Everest.Formatters.XML.Datatypes.R2; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: ..\MARC.Everest.Formatters.XML.ITS1\bin\Release\MARC.Everest.Formatters.XML.ITS1.XML; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: ..\MARC.Everest.Formatters.XML.ITS1\bin\Release\MARC.Everest.Formatters.XML.ITS1.dll; StrongAssemblyName: MARC.Everest.Formatters.XML.ITS1; DestDir: {app}\lib; Flags: ignoreversion; Components: api
Source: ..\gpmr\bin\Release\MohawkCollege.Util.Console.Writer.xml; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\gpmr\bin\Release\gpmr.exe; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\gpmr\gpmrw\bin\Release\gpmrw.exe; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\gpmr\MohawkCollege.EHR.gpmr.Pipeline.Renderer.Deki\Resources\Clean.xml; DestDir: {app}\templates; Flags: ignoreversion; Components: tools
Source: ..\gpmr\MohawkCollege.EHR.gpmr.Pipeline.Renderer.Deki\Resources\Classic.xml; DestDir: {app}\templates; Flags: ignoreversion; Components: tools
Source: ..\gpmr\bin\Release\xsl\*.xsl*; DestDir: {app}\xsl; Flags: ignoreversion recursesubdirs; Components: tools
Source: ..\gpmr\bin\Release\xsl\*.txt*; DestDir: {app}\xsl; Flags: ignoreversion recursesubdirs; Components: tools
Source: ..\gpmr\bin\Release\gpmr.exe.config; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\gpmr\gpmrw\bin\Release\gpmrw.exe.config; DestDir: {app}; Flags: ignoreversion; Components: tools

Source: ..\gpmr\bin\Release\MohawkCollege.EHR.gpmr.COR.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\gpmr\bin\Release\MohawkCollege.EHR.gpmr.Pipeline.Compiler.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\gpmr\bin\Release\MohawkCollege.EHR.gpmr.Pipeline.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\gpmr\bin\Release\MohawkCollege.EHR.gpmr.Pipeline.Renderer.Deki.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\gpmr\bin\Release\MohawkCollege.EHR.gpmr.Pipeline.Renderer.RimbaCS.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\gpmr\bin\Release\MohawkCollege.EHR.gpmr.Pipeline.Renderer.Java.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\gpmr\bin\Release\Data\*.*; DestDir: {app}\Data; Flags: ignoreversion; Components: tools
Source: ..\gpmr\bin\Release\MohawkCollege.EHR.gpmr.Pipeline.Renderer.XML.ITS.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\gpmr\bin\Release\MohawkCollege.EHR.Util.SimpleXSD.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\gpmr\bin\Release\MohawkCollege.EHR.gpmr.Pipeline.Triggers.CorCollapser.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\gpmr\bin\Release\MohawkCollege.EHR.gpmr.Pipeline.Triggers.CorDelta.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\gpmr\bin\Release\MohawkCollege.EHR.HL7v3.MIF.MIF20.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\gpmr\bin\Release\MohawkCollege.Util.Console.Parameters.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\gpmr\bin\Release\MohawkCollege.Util.Console.Parameters.xml; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\gpmr\bin\Release\MohawkCollege.Util.Console.Writer.dll; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\MARC.Everest\bin\Release\MARC.Everest.dll; StrongAssemblyName: MARC.Everest; DestDir: {app}; Flags: ignoreversion; Components: tools
Source: ..\MARC.Everest\bin\Release\MARC.Everest.xml; DestDir: {app}; Flags: ignoreversion; Components: tools
#endif

;Source: .\installsupp\release\JAN-CTP-2010.txt; DestDir:{app}

;Source:http://142.222.45.23/favicon.ico; DestDir:{app};
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
;Source: .\installsupp\help\HL7v3 Application Programming Interface.pdf; DestDir: {app}\help; Components: doc\guide
Source: .\installsupp\Help\MARC-HI Everest Framework.chm; DestDir: {app}\help; Components: doc
Source: .\installsupp\isxdl.dll; DestDir: {tmp}
#ifdef INCLUDE_SRC
Source: ..\*; DestDir: {app}\src; Flags: ignoreversion recursesubdirs; Excludes: *.vssscc, *.dump, ApiExplorer, Samples,*.vspscc, MARC.Everest.Test*, MARC.Everest.Installer*, MARC.Everest.Connectors.MSMQ, MARC.Everest.VisualStudio.*,TFS Build - Nightly.txt,*.cache,*.resources,*.exe,*.exe.config,*.dll.config,*.pdb,MARC.*.xml,*.dll, *.iss, *.chm, TeamBuildTypes, TestResults, api.sln, *.xsd, *.*mif, Solution Items; Components: src
#endif
#ifdef INCLUDE_SAMPLES
Source: ..\Samples\*; DestDir: {app}\samples; Flags: ignoreversion recursesubdirs; Excludes: *.vspscc, *.vssscc, *.dump,*.cache,*.resources,*.exe,*.exe.config,*.dll.config,*.pdb,MARC.*.xml,*.dll, *.iss, *.chm, *.suo; Components: doc\samples
Source: .\installsupp\sample\*; Flags: ignoreversion recursesubdirs; DestDir: {app}; Components: doc\samples;
#endif
; TODO: Redo this
#ifdef TFSBuild
Source: {#buildpath}\MARC.Everest.VisualStudio.Wizards.dll; StrongAssemblyName:"MARC.Everest.VisualStudio.Wizards, Version=1.0.0.0, Culture=Neutral, PublicKeyToken=b2fb2479f9679b57"; Flags:gacinstall ignoreversion; DestDir:{app}\lib; Components:api\vs
#else
Source: ..\MARC.Everest.VisualStudio.Wizards\bin\Release\MARC.Everest.VisualStudio.Wizards.dll; StrongAssemblyName:"MARC.Everest.VisualStudio.Wizards, Version=1.0.0.0, Culture=Neutral, PublicKeyToken=b2fb2479f9679b57"; Flags:gacinstall ignoreversion; DestDir:{app}\lib; Components:api\vs tools
#endif
#ifdef TFSBuild
Source: "{#buildpath}\MARC.Everest.Installer\installsupp\help\Everest Visual Studio Templates.vsi"; DestDir: {app}; Components:api\vs
#else
Source: "..\MARC.Everest.Installer\installsupp\help\Everest Visual Studio Templates.vsi"; DestDir: {app}; Components:api\vs
#endif
Source: ..\Solution Items\ICSharpCode.SharpZipLib.dll; DestDir: {tmp}; Components:api\vs


[INI]
FileName: "{app}\everest.version"; Section: "Everest"; Key: "Version"; String: "1.0.1";


[Icons]
#ifdef INCLUDE_SRC
Name: {group}\Source\Everest Source; FileName: {app}\src\everest.sln; Components:src
#endif
#ifdef INCLUDE_SAMPLES
Name: {group}\Getting Started; FileName: {app}\index.hta; WorkingDir:{app}; Components:doc\samples; IconFilename:{app}\browser\images\appicon.ico
#endif
Name: {group}\GPMR Command Prompt; FileName:cmd; Parameters:"/k """"{app}\gpmrvarsall.bat"" ""{app}"""""; Components: tools
Name: {group}\GPMR Wizard; FileName:{app}\gpmrw; Components: tools
;Name: {group}\Documentation\Reference Guide; FileName: {app}\help\HL7v3 Application Programming Interface.pdf; Components: doc\guide; Flags: createonlyiffileexists;
Name: {group}\Documentation\Everest Documentation; FileName: {app}\help\MARC-HI Everest Framework.chm; Components: doc
Name: {group}\Documentation\Structural Documentation; FileName: http://142.222.45.23/Infrastructure/Messaging/HL7v3/Canadian/MR2009
Name: {group}\Install Visual Studio Templates; FileName: "{app}\Everest Visual Studio Templates.vsi"; Components:api\vs; 
Name: {group}\MARC-HI Wiki; FileName: http://wiki.marc-hi.ca/
Name: {group}\{cm:UninstallProgram,Everest}; Filename: {uninstallexe}

[UninstallRun]
Filename: "{dotnet20}\ngen.exe"; Parameters: "uninstall ""{app}\lib\MARC.Everest.RMIM.UV.NE2008.dll"" /nologo /silent" ; Components:api\ne; StatusMsg: "Removing Native Assembly : MARC.Everest.RMIM.UV.NE2008"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "uninstall ""{app}\lib\MARC.Everest.RMIM.UV.NE2010.dll"" /nologo /silent" ; Components:api\ne; StatusMsg: "Removing Native Assembly : MARC.Everest.RMIM.UV.NE2010"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "uninstall ""{app}\lib\MARC.Everest.RMIM.UV.CDAr2.dll"" /nologo /silent" ; Components:api\cda; StatusMsg: "Removing Native Assembly : MARC.Everest.RMIM.UV.CDAr2"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "uninstall ""{app}\lib\MARC.Everest.RMIM.CA.R020401.dll"" /nologo /silent" ; Components:api\ca; StatusMsg: "Removing Native Assembly : MARC.Everest.RMIM.CA.R020401"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "uninstall ""{app}\lib\MARC.Everest.RMIM.CA.R020402.dll"" /nologo /silent" ; Components:api\ca; StatusMsg: "Removing Native Assembly : MARC.Everest.RMIM.CA.R020402"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "uninstall ""{app}\lib\MARC.Everest.RMIM.CA.R020403.dll"" /nologo /silent" ; Components:api\ca; StatusMsg: "Removing Native Assembly : MARC.Everest.RMIM.CA.R020403"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "uninstall ""{app}\lib\MARC.Everest.dll"" /nologo /silent" ; Components:api; StatusMsg: "Removing Native Assembly : MARC.Everest"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "uninstall ""{app}\lib\MARC.Everest.Formatters.XML.ITS1.dll"" /nologo /silent" ; Components:api; StatusMsg: "Generating Native Assembly : MARC.Everest.Formatters.XML.ITS1"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "uninstall ""{app}\lib\MARC.Everest.Formatters.XML.DataTypes.R1.dll"" /nologo /silent" ; Components:api; StatusMsg: "Generating Native Assembly : MARC.Everest.Formatters.XML.Datatypes.R1"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "uninstall ""{app}\lib\MARC.Everest.Formatters.XML.DataTypes.R2.dll"" /nologo /silent" ; Components:api; StatusMsg: "Generating Native Assembly : MARC.Everest.Formatters.XML.Datatypes.R2"; Flags:runhidden
;Filename: "{dotnet20}\ngen.exe"; Parameters: "uninstall ""{app}\lib\MARC.Everest.Formatters.XML.DataTypes.R1.CA.dll"" /nologo /silent" ; Components:api; StatusMsg: "Generating Native Assembly : MARC.Everest.Formatters.XML.Datatypes.R1.CA"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "uninstall ""{app}\lib\MARC.Everest.Connectors.WCF.dll"" /nologo /silent" ; Components:api; StatusMsg: "Generating Native Assembly : MARC.Everest.Connectors.WCF"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "uninstall ""{app}\lib\MARC.Everest.Connectors.File.dll"" /nologo /silent" ; Components:api; StatusMsg: "Generating Native Assembly : MARC.Everest.Connectors.File"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "uninstall ""{app}\lib\MARC.Everest.Connectors.Msmq.dll"" /nologo /silent" ; Components:api; StatusMsg: "Generating Native Assembly : MARC.Everest.Connectors.MSMQ"; Flags:runhidden

[Run]
Filename: "{dotnet20}\ngen.exe"; Parameters: "install ""{app}\lib\MARC.Everest.RMIM.UV.NE2008.dll"" /nologo /silent" ; Components:api\ne; StatusMsg: "Generating Native Assembly : MARC.Everest.RMIM.UV.NE2008"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "install ""{app}\lib\MARC.Everest.RMIM.UV.NE2010.dll"" /nologo /silent" ; Components:api\ne; StatusMsg: "Generating Native Assembly : MARC.Everest.RMIM.UV.NE2010"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "install ""{app}\lib\MARC.Everest.RMIM.UV.CDAr2.dll"" /nologo /silent" ; Components:api\cda; StatusMsg: "Generating Native Assembly : MARC.Everest.RMIM.UV.CDAr2"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "install ""{app}\lib\MARC.Everest.RMIM.CA.R020401.dll"" /nologo /silent" ; Components:api\ca; StatusMsg: "Generating Native Assembly : MARC.Everest.RMIM.CA.R020401"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "install ""{app}\lib\MARC.Everest.RMIM.CA.R020402.dll"" /nologo /silent" ; Components:api\ca; StatusMsg: "Generating Native Assembly : MARC.Everest.RMIM.CA.R020402"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "install ""{app}\lib\MARC.Everest.RMIM.CA.R020403.dll"" /nologo /silent" ; Components:api\ca; StatusMsg: "Generating Native Assembly : MARC.Everest.RMIM.CA.R020403"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "install ""{app}\lib\MARC.Everest.dll"" /nologo /silent" ; Components:api; StatusMsg: "Generating Native Assembly : MARC.Everest"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "install ""{app}\lib\MARC.Everest.Formatters.XML.ITS1.dll"" /nologo /silent" ; Components:api; StatusMsg: "Generating Native Assembly : MARC.Everest.Formatters.XML.ITS1"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "install ""{app}\lib\MARC.Everest.Formatters.XML.DataTypes.R1.dll"" /nologo /silent" ; Components:api; StatusMsg: "Generating Native Assembly : MARC.Everest.Formatters.XML.Datatypes.R1"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "install ""{app}\lib\MARC.Everest.Formatters.XML.DataTypes.R2.dll"" /nologo /silent" ; Components:api; StatusMsg: "Generating Native Assembly : MARC.Everest.Formatters.XML.Datatypes.R2"; Flags:runhidden
;Filename: "{dotnet20}\ngen.exe"; Parameters: "install ""{app}\lib\MARC.Everest.Formatters.XML.DataTypes.R1.CA.dll"" /nologo /silent" ; Components:api; StatusMsg: "Generating Native Assembly : MARC.Everest.Formatters.XML.Datatypes.R1.CA"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "install ""{app}\lib\MARC.Everest.Connectors.WCF.dll"" /nologo /silent" ; Components:api; StatusMsg: "Generating Native Assembly : MARC.Everest.Connectors.WCF"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "install ""{app}\lib\MARC.Everest.Connectors.File.dll"" /nologo /silent" ; Components:api; StatusMsg: "Generating Native Assembly : MARC.Everest.Connectors.File"; Flags:runhidden
Filename: "{dotnet20}\ngen.exe"; Parameters: "install ""{app}\lib\MARC.Everest.Connectors.Msmq.dll"" /nologo /silent" ; Components:api; StatusMsg: "Generating Native Assembly : MARC.Everest.Connectors.MSMQ"; Flags:runhidden
Filename: "{app}\Everest Visual Studio Templates.vsi"; WorkingDir: {app}; StatusMsg: "Installing Visual Studio Components"; Components:api\vs; Flags: shellexec waituntilterminated hidewizard
#ifdef INCLUDE_SAMPLES
FileName: {app}\index.hta; WorkingDir:{app}; Components:doc\samples; Flags: postinstall shellexec; Description: "Start the 'Getting Started' tool"
#endif


[Types]
Name: full; Description: Complete Installation
Name: tooling; Description: GPMR & Tools Only
Name: compact; Description: API Libraries Only
Name: developer; Description: Full Development Environment
Name: developer\cda; Description: CDA Development Environment
Name: developer\ne; Description: Universal Edition Development Environment
Name: developer\necda; Description: Universal/CDA Development Environment
Name: developer\ca; Description: Canadian Edition Development Environment
Name: custom; Description: Custom Install; Flags: iscustom

[Components]
Name: tools; Description: Tool Files; Types: full tooling
Name: doc; Description: Documentation; Types: full
Name: doc\guide; Description: Developers Guide; Types: full developer developer\cda developer\ne developer\necda developer\ca
#ifdef INCLUDE_SAMPLES
Name: doc\samples; Description: Samples; Types: full developer developer\cda developer\ne developer\necda developer\ca
#endif
;Name: doc\html; Description: MIF Documentation; Types:full
Name: api; Description: Everest Core; Types: compact full developer developer\cda developer\ne developer\necda developer\ca
Name: api\cda; Description: CDA r2 Support; Types: compact full developer developer\cda developer\necda 
Name: api\ne; Description: UV Support (NE2010/NE2008); Types: compact full developer developer\ne developer\necda
Name: api\ca; Description: CA Support (R02.04.01-R02.04.03); Types: compact full developer developer\ca
Name: api\vs; Description: Visual Studio Integration; Types: full developer developer\cda developer\ne developer\necda developer\ca
Name: api\vs\cda; Description: CDA r2 Documentation; Types: full developer developer\cda developer\necda
Name: api\vs\ne; Description: UV Documentation (NE2010/NE2008); Types: full developer developer\ne developer\necda
Name: api\vs\ca; Description: CA Documentation (R02.04.01-R02.04.03); Types: full developer developer\ca
#ifdef INCLUDE_MIFS
Name: spec; Description: Pan-Canadian Specifications; Types: full
#endif
#ifdef INCLUDE_SRC
Name: src; Description: Source; Types: full
;Name: samples; Description: Samples; Types: full
#endif

[Code]
var
  dotnetRedistPath: string;
  downloadNeeded, needsUninstall, sept2009, nov2009, jan2010, rc1: boolean;
  dotNetNeeded: boolean;
  memoDependenciesNeeded: string;
	lblSelectMode:	TLabel;
  rdoRuntime, rdoGpmr, rdoTypical, rdoCustom: TRadioButton;

  chkBox : TCheckBox;
  uninstallPageId : integer;
  
procedure isxdl_AddFile(URL, Filename: PChar);
external 'isxdl_AddFile@files:isxdl.dll stdcall';
function isxdl_DownloadFiles(hWnd: Integer): Integer;
external 'isxdl_DownloadFiles@files:isxdl.dll stdcall';
function isxdl_SetOption(Option, Value: PChar): Integer;
external 'isxdl_SetOption@files:isxdl.dll stdcall';

const
  dotnetRedistURL = '{tmp}\dotNetFx35setup.exe';
  // local system for testing...
  // dotnetRedistURL = 'http://192.168.1.1/dotnetfx.exe';

function CurrentDateShort(Param:String): String;
begin
  result := Uppercase(GetDateTimeString('MMM-yyyy', #0, #0));
end;

function CurrentDate(Param:String): String;
begin
  result := GetDateTimeString('yyyymmdd', #0, #0);
end;

function InitializeSetup(): Boolean;

begin
  Result := true;
  dotNetNeeded := false;
  // CTP SEP 2009
  sept2009 := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\{A21E1269-8CDE-43CD-B179-2B6674413077}_is1'); 
  // CTP OCT 2009
  nov2009 := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\{A21E1269-8CDE-43CD-B179-2B6674413078}_is1');
  // CTP JAN 2010
  jan2010 := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\{A21E1269-8CDE-43CD-B179-2B6674413079}_is1');
  // RC1
  rc1 := RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\{A21E1269-8CDE-43CD-B179-2B6674413080}_is1');
  needsUninstall := sept2009 or nov2009 or jan2010 or rc1;
  // Check for required netfx installation
  //if (not GetUserDefaultLangID() = 'English') then begin

        //msgbox('Language Is Not English');

  //end;

  if (not DirExists(ExpandConstant('{win}\Microsoft.NET\Framework\v3.5'))) then begin
    dotNetNeeded := true;
    if (not IsAdminLoggedOn()) then begin
      MsgBox('GPMR needs the Microsoft .NET Framework 3.5 to be installed by an Administrator', mbInformation, MB_OK);
      Result := false;
    end else begin
      memoDependenciesNeeded := memoDependenciesNeeded + '      .NET Framework 3.5' #13;
      dotnetRedistPath := ExpandConstant('{tmp}\dotNetFx35setup.exe');

    end;
  end;

end;

function PrepareToInstall(var needsRestart:Boolean): String;
var
  hWnd: Integer;
  ResultCode : integer;
  uninstallString : string;
begin
     Result := '';

     hWnd := StrToInt(ExpandConstant('{wizardhwnd}'));

     EnableFsRedirection(true);
     
     // Should we uninstall the old?
     if(needsUninstall) then
     if((chkBox.Checked)) then begin
     
		// Sept 2009
         needsUninstall := RegQueryStringValue(HKEY_LOCAL_MACHINE, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\{A21E1269-8CDE-43CD-B179-2B6674413077}_is1', 'UninstallString', uninstallString);
  		if(needsUninstall) then begin
            // Replace
            while(Pos('"',uninstallString) > 0) do begin
              Delete(uninstallString, Pos('"',uninstallString), 1);
            end;

           if(Exec(ExpandConstant(uninstallString), '/silent', '', SW_SHOW, ewWaitUntilTerminated, ResultCode)) then begin

             if not (ResultCode = 0) then begin
              Result := 'Couldn''t uninstall old version of MARC-HI Everest';
             end;
             end
             else begin
              Result := 'Couldn''t launch the Everest uninstall';
            end;
         end;

		// Nov 2009         
		needsUninstall := RegQueryStringValue(HKEY_LOCAL_MACHINE, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\{A21E1269-8CDE-43CD-B179-2B6674413078}_is1', 'UninstallString', uninstallString);
  		if(needsUninstall) then begin
            // Replace
            while(Pos('"',uninstallString) > 0) do begin
              Delete(uninstallString, Pos('"',uninstallString), 1);
            end;

           if(Exec(ExpandConstant(uninstallString), '/silent', '', SW_SHOW, ewWaitUntilTerminated, ResultCode)) then begin

             if not (ResultCode = 0) then begin
              Result := 'Couldn''t uninstall old version of MARC-HI Everest';
             end;
             end
             else begin
              Result := 'Couldn''t launch the Everest uninstall';
            end;
         end;

		// Jan 2010         
		needsUninstall := RegQueryStringValue(HKEY_LOCAL_MACHINE, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\{A21E1269-8CDE-43CD-B179-2B6674413079}_is1', 'UninstallString', uninstallString);
  		if(needsUninstall) then begin
            // Replace
            while(Pos('"',uninstallString) > 0) do begin
              Delete(uninstallString, Pos('"',uninstallString), 1);
            end;

           if(Exec(ExpandConstant(uninstallString), '/silent', '', SW_SHOW, ewWaitUntilTerminated, ResultCode)) then begin

             if not (ResultCode = 0) then begin
              Result := 'Couldn''t uninstall old version of MARC-HI Everest';
             end;
             end
             else begin
              Result := 'Couldn''t launch the Everest uninstall';
            end;
         end;

		// RC1         
		needsUninstall := RegQueryStringValue(HKEY_LOCAL_MACHINE, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\{A21E1269-8CDE-43CD-B179-2B6674413080}_is1', 'UninstallString', uninstallString);
  		if(needsUninstall) then begin
            // Replace
            while(Pos('"',uninstallString) > 0) do begin
              Delete(uninstallString, Pos('"',uninstallString), 1);
            end;

           if(Exec(ExpandConstant(uninstallString), '/silent', '', SW_SHOW, ewWaitUntilTerminated, ResultCode)) then begin

             if not (ResultCode = 0) then begin
              Result := 'Couldn''t uninstall old version of MARC-HI Everest';
             end;
             end
             else begin
              Result := 'Couldn''t launch the Everest uninstall';
            end;
         end;

     end;

    if (Result = '') and (dotNetNeeded = true) then begin

    ExtractTemporaryFile('dotNetFx35setup.exe')
    if Exec(ExpandConstant(dotnetRedistPath), '/passive /norestart', '', SW_SHOW, ewWaitUntilTerminated, ResultCode) then begin
        // handle success if necessary; ResultCode contains the exit code
        if not (ResultCode = 0) then begin
          Result := '.NET Framework 3.5 is Required';
        end;
      end else begin
        // handle failure if necessary; ResultCode contains the error code
          Result := '.NET Framework 3.5 is Required';
      end;
    end;
end;

function UpdateReadyMemo(Space, NewLine, MemoUserInfoInfo, MemoDirInfo, MemoTypeInfo, MemoComponentsInfo, MemoGroupInfo, MemoTasksInfo: String): String;
var
  s: string;

begin
  if memoDependenciesNeeded <> '' then s := s + 'Dependencies that will be automatically downloaded And installed:' + NewLine + memoDependenciesNeeded + NewLine;
  if(needsUninstall) then
    if(chkBox.Checked) then begin
		s := s + 'Uninstall Old Frameworks' + NewLine;
		if(sept2009) then	
			s := s + '       Uninstall Sepember CTP of MARC-HI Everest' + NewLine;
		if(nov2009) then
			s := s + '       Uninstall November CTP of MARC-HI Everest' + NewLine;
		if(jan2010) then
			s := s + '       Uninstall January 2010 CTP of MARC-HI Everest' + NewLine;
		if(rc1) then
			s := s + '       Uninstall Release Candidate 1 of MARC-HI Everest' + NewLine;
	end;
	
  s := s + MemoDirInfo + NewLine;

  Result := s
end;


// Custom Form has become active
procedure CustomForm_Activate(Page: TWizardPage);
begin
end;

// Should the custom form be skipped
function ShouldSkipPage(Page:Integer) : Boolean;
begin
  (*if((Page = wpSelectComponents) and rdoTypical.Checked) then begin
    Result := true;
  end
  else begin*)
  	Result := false;
//  end;
end;

// Back click supported on the custom form
function CustomForm_BackButtonClick(Page: TWizardPage): Boolean;
begin
	Result := true;
end;

// When the next button is clicked
function CustomForm_NextButtonClick(Page: TWizardPage): Boolean;
var
  SelectedComponents:String;
begin
  // Todo: Skip the select components
  SelectedComponents := WizardSelectedComponents(false);
  Result := true;
end;

/// When the cancel button is clicked
procedure CustomForm_CancelButtonClick(Page: TWizardPage; var Cancel, Confirm:Boolean);
begin
end;


// Create the choose install method option
function CustomForm_CreatePage(PreviousPageId: Integer) : Integer;
var
	Page: TWizardPage;
	
begin
	Page := CreateCustomPage( PreviousPageId, ExpandConstant('Select Install Method'), ExpandConstant('Please choose the options you would like installed'));
	lblSelectMode := TLabel.Create(Page);
	with lblSelectMode do begin
		Parent := Page.Surface;
		Caption := ExpandConstant('Please select the type of installation you wish to perform');
		Left := ScaleX(30);
		Top := ScaleY(16);
		Width := ScaleX(341);
		Height := ScaleY(52);
	end;

	rdoTypical := TRadioButton.Create(Page);
	rdoCustom := TRadioButton.Create(Page);
	rdoRuntime := TRadioButton.Create(Page);
	rdoGpmr := TRadioButton.Create(page);
	with rdoTypical do begin
		Parent := Page.Surface;
		Caption := 'Complete Install (min 160 MB - Recommended)';
		Left := ScaleX(40);
		Top := ScaleY(46);
		Width := ScaleX(341);
		Height := ScaleY(21);
		TabOrder := 0;
		Checked := true;
	end;
	with rdoCustom do begin
		Parent := Page.Surface;
		Caption := 'Custom Install (min 1 MB)';
		Left := ScaleX(40);
		Top := ScaleY(112);
		Width := ScaleX(341);
		Height := ScaleY(21);
		TabOrder := 3;
	end;
  with rdoGpmr do begin
		Parent := Page.Surface;
		Caption := 'GPMR & Tooling (min 3 MB)';
		Left := ScaleX(40);
		Top := ScaleY(68);
		Width := ScaleX(341);
		Height := ScaleY(21);
		TabOrder := 1;
	end;
	with rdoRuntime do begin
		Parent := Page.Surface;
		Caption := 'Runtime Install (min 42 MB)';
		Left := ScaleX(40);
		Top := ScaleY(90);
		Width := ScaleX(341);
		Height := ScaleY(21);
		TabOrder := 2;
	end;
	with Page do begin
		OnActivate := @CustomForm_Activate;
		OnBackButtonClick := @CustomForm_BackButtonClick;
		OnNextButtonClick := @CustomForm_NextButtonClick;
		OnCancelButtonClick := @CustomForm_CancelButtonClick;
	end;

	Result := Page.ID;
end;

function UninstallForm_CreatePage(PreviousPageId : Integer) : Integer  ;
var
  Page : TWizardPage;
  lblDescription : TLabel;
begin
  Page := CreateCustomPage( PreviousPageId, ExpandConstant('Uninstall Previous Versions'), ExpandConstant('Setup has detected previous versions of the Everest Framework'));
  
  // Select mode
  lblSelectMode := TLabel.Create(Page);
	with lblSelectMode do begin
		Parent := Page.Surface;
		Caption := ExpandConstant('Setup has detected previous versions of the MARC-HI Everest Framework'  + #13 + #10);
		Caption := Caption + ExpandConstant('which should be removed before installing this version');
		Left := ScaleX(25);
		Top := ScaleY(16);
		Width := ScaleX(354);
		Height := ScaleY(52);
	end;
	
	// Check to uninstall
	chkBox := TCheckBox.Create(Page);
	with chkBox do begin
		Parent := Page.Surface;
		Caption := ExpandConstant('Uninstall previous versions of MARC-HI Everest (Recommended)');
		Left := ScaleX(40);
		Top := ScaleY(78);
		Width := ScaleX(348);
		Height := ScaleY(52);
		Checked := true;
	end;
	
	Result := Page.ID;
end;

procedure InitializeWizard();
begin
	//CustomForm_CreatePage(wpSelectDir);
	if(needsUninstall) then
  	uninstallPageId := UninstallForm_CreatePage(wpWelcome);
  	
end;

