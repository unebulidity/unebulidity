%########################################################################
%# Copyright (c) 1988-2022 $organization$
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: hxx-cxx-hxx-cxx.t
%#
%# Author: $author$
%#   Date: 12/7/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_header,%(%else-then(%is_header%,%(%is_Header%)%)%)%,%
%header,%(%else-then(%if-no(%is_header%,,%(%header%)%)%,%(%if-no(%is_header%,,%(%
%%if(%equal(%Extension%,hxx)%%equal(%Extension%,cxx)%,%(hxx)%,%(%
%%if(%equal(%Extension%,hpp)%%equal(%Extension%,cpp)%,%(hpp)%,%(%
%%if(%equal(%Extension%,hh)%%equal(%Extension%,mm)%,%(hh)%,%(%
%%if(%equal(%Extension%,h)%%equal(%Extension%,c)%%equal(%Extension%,m)%%equal(%Extension%,cc)%,%(h)%,%(%
%%TypeExtension%)%)%)%)%)%)%)%)%%
%)%)%)%)%)%,%
%Header,%(%else-then(%if-no(%is_header%,,%(%Header%)%)%,%(%if-no(%is_header%,,%(%header%)%)%)%)%)%,%
%HEADER,%(%else-then(%HEADER%,%(%toupper(%Header%)%)%)%)%,%
%header,%(%else-then(%_header%,%(%tolower(%Header%)%)%)%)%,%
%is_body,%(%else-then(%is_body%,%(%is_Body%)%)%)%,%
%body,%(%else-then(%if-no(%is_body%,,%(%body%)%)%,%(%if-no(%is_body%,,%(%
%%if(%equal(%Extension%,cc)%,%(cc)%,%(%
%%if(%equal(%Header%,hxx)%,%(cxx)%,%(%
%%if(%equal(%Header%,hpp)%,%(cpp)%,%(%
%%if(%equal(%Header%,hh)%,%(mm)%,%(%
%%if(%equal(%Extension%,m)%,%(m)%,%(%
%%if(%equal(%Header%,h)%,%(c)%,%(%
%cpp)%)%)%)%)%)%)%)%)%)%)%)%%
%)%)%)%)%)%,%
%Body,%(%else-then(%if-no(%is_body%,,%(%Body%)%)%,%(%if-no(%is_body%,,%(%body%)%)%)%)%)%,%
%BODY,%(%else-then(%BODY%,%(%toupper(%Body%)%)%)%)%,%
%body,%(%else-then(%_body%,%(%tolower(%Body%)%)%)%)%,%
%is_isheader,%(%else-then(%is_isheader%,%(%is_IsHeader%)%)%)%,%
%isheader,%(%else-then(%if-no(%is_isheader%,,%(%isheader%)%)%,%(%if-no(%is_isheader%,,%(%
%%if(%equal(%Extension%,hxx)%,%(hxx)%,%(%
%%if(%equal(%Extension%,hpp)%,%(hpp)%,%(%
%%if(%equal(%Extension%,hh)%,%(hh)%,%(%
%%if(%equal(%Extension%,h)%,%(h)%,%(%
%)%)%)%)%)%)%)%)%%
%)%)%)%)%)%,%
%IsHeader,%(%else-then(%if-no(%is_isheader%,,%(%IsHeader%)%)%,%(%if-no(%is_isheader%,,%(%isheader%)%)%)%)%)%,%
%ISHEADER,%(%else-then(%ISHEADER%,%(%toupper(%IsHeader%)%)%)%)%,%
%isheader,%(%else-then(%_isheader%,%(%tolower(%IsHeader%)%)%)%)%,%
%is_isbody,%(%else-then(%is_isbody%,%(%is_IsBody%)%)%)%,%
%isbody,%(%else-then(%if-no(%is_isbody%,,%(%isbody%)%)%,%(%if-no(%is_isbody%,,%(%
%%if(%equal(%Extension%,cxx)%,%(cxx)%,%(%
%%if(%equal(%Extension%,cpp)%,%(cpp)%,%(%
%%if(%equal(%Extension%,cc)%,%(cc)%,%(%
%%if(%equal(%Extension%,mm)%,%(mm)%,%(%
%%if(%equal(%Extension%,m)%,%(m)%,%(%
%%if(%equal(%Extension%,c)%,%(c)%,%(%
%)%)%)%)%)%)%)%)%)%)%)%)%%
%)%)%)%)%)%,%
%IsBody,%(%else-then(%if-no(%is_isbody%,,%(%IsBody%)%)%,%(%if-no(%is_isbody%,,%(%isbody%)%)%)%)%)%,%
%ISBODY,%(%else-then(%ISBODY%,%(%toupper(%IsBody%)%)%)%)%,%
%isbody,%(%else-then(%_isbody%,%(%tolower(%IsBody%)%)%)%)%,%
%is_file_ifndef,%(%else-then(%is_file_ifndef%,%(%is_File_ifndef%)%)%)%,%
%file_ifndef,%(%else-then(%if-no(%is_file_ifndef%,,%(%file_ifndef%)%)%,%(%if-no(%is_file_ifndef%,,%(%
%%else-then(%Namespace%,%(%else-then(%Framework%,%(xos)%)%)%)%%
%)%)%)%)%)%,%
%File_ifndef,%(%else-then(%if-no(%is_file_ifndef%,,%(%File_ifndef%)%)%,%(%if-no(%is_file_ifndef%,,%(%file_ifndef%)%)%)%)%)%,%
%FILE_IFNDEF,%(%else-then(%FILE_IFNDEF%,%(%toupper(%File_ifndef%)%)%)%)%,%
%file_ifndef,%(%else-then(%_file_ifndef%,%(%tolower(%File_ifndef%)%)%)%)%,%
%is_file_ifndef_define_prefix,%(%else-then(%is_file_ifndef_define_prefix%,%(%is_File_ifndef_define_prefix%)%)%)%,%
%file_ifndef_define_prefix,%(%else-then(%if-no(%is_file_ifndef_define_prefix%,,%(%file_ifndef_define_prefix%)%)%,%(%if-no(%is_file_ifndef_define_prefix%,,%(%
%)%)%)%)%)%,%
%File_ifndef_define_prefix,%(%else-then(%if-no(%is_file_ifndef_define_prefix%,,%(%File_ifndef_define_prefix%)%)%,%(%if-no(%is_file_ifndef_define_prefix%,,%(%file_ifndef_define_prefix%)%)%)%)%)%,%
%FILE_IFNDEF_DEFINE_PREFIX,%(%else-then(%FILE_IFNDEF_DEFINE_PREFIX%,%(%toupper(%File_ifndef_define_prefix%)%)%)%)%,%
%file_ifndef_define_prefix,%(%else-then(%_file_ifndef_define_prefix%,%(%tolower(%File_ifndef_define_prefix%)%)%)%)%,%
%is_file_ifndef_define_suffix,%(%else-then(%is_file_ifndef_define_suffix%,%(%is_File_ifndef_define_suffix%)%)%)%,%
%file_ifndef_define_suffix,%(%else-then(%if-no(%is_file_ifndef_define_suffix%,,%(%file_ifndef_define_suffix%)%)%,%(%if-no(%is_file_ifndef_define_suffix%,,%(%
%)%)%)%)%)%,%
%File_ifndef_define_suffix,%(%else-then(%if-no(%is_file_ifndef_define_suffix%,,%(%File_ifndef_define_suffix%)%)%,%(%if-no(%is_file_ifndef_define_suffix%,,%(%file_ifndef_define_suffix%)%)%)%)%)%,%
%FILE_IFNDEF_DEFINE_SUFFIX,%(%else-then(%FILE_IFNDEF_DEFINE_SUFFIX%,%(%toupper(%File_ifndef_define_suffix%)%)%)%)%,%
%file_ifndef_define_suffix,%(%else-then(%_file_ifndef_define_suffix%,%(%tolower(%File_ifndef_define_suffix%)%)%)%)%,%
%is_file_ifndef_define,%(%else-then(%is_file_ifndef_define%,%(%is_File_ifndef_define%)%)%)%,%
%file_ifndef_define,%(%else-then(%if-no(%is_file_ifndef_define%,,%(%file_ifndef_define%)%)%,%(%if-no(%is_file_ifndef_define%,,%(%
%%File_ifndef_define_prefix%%
%%parse(%FILE_IFNDEF%,/,,_,,%(%IFNDEF%)%,IFNDEF)%%
%_%BASE%_%EXTENSION%%
%%File_ifndef_define_suffix%%
%)%)%)%)%)%,%
%File_ifndef_define,%(%else-then(%if-no(%is_file_ifndef_define%,,%(%File_ifndef_define%)%)%,%(%if-no(%is_file_ifndef_define%,,%(%file_ifndef_define%)%)%)%)%)%,%
%FILE_IFNDEF_DEFINE,%(%else-then(%FILE_IFNDEF_DEFINE%,%(%toupper(%File_ifndef_define%)%)%)%)%,%
%file_ifndef_define,%(%else-then(%_file_ifndef_define%,%(%tolower(%File_ifndef_define%)%)%)%)%,%
%is_file_ifndef_base,%(%else-then(%is_file_ifndef_base%,%(%is_File_ifndef_base%)%)%)%,%
%file_ifndef_base,%(%else-then(%if-no(%is_file_ifndef_base%,,%(%file_ifndef_base%)%)%,%(%if-no(%is_file_ifndef_base%,,%(%
%%parse(%FILE_IFNDEF%,/,,_,,%(%IFNDEF%)%,IFNDEF)%%
%_%BASE%%
%%File_ifndef_define_suffix%%
%)%)%)%)%)%,%
%File_ifndef_base,%(%else-then(%if-no(%is_file_ifndef_base%,,%(%File_ifndef_base%)%)%,%(%if-no(%is_file_ifndef_base%,,%(%file_ifndef_base%)%)%)%)%)%,%
%FILE_IFNDEF_BASE,%(%else-then(%FILE_IFNDEF_BASE%,%(%toupper(%File_ifndef_base%)%)%)%)%,%
%file_ifndef_base,%(%else-then(%_file_ifndef_base%,%(%tolower(%File_ifndef_base%)%)%)%)%,%
%is_file_ifndef_instance,%(%else-then(%is_file_ifndef_instance%,%(%is_File_ifndef_instance%)%)%)%,%
%file_ifndef_instance,%(%else-then(%if-no(%is_file_ifndef_instance%,,%(%file_ifndef_instance%)%)%,%(%if-no(%is_file_ifndef_instance%,,%(%
%%File_ifndef_define_prefix%%
%%parse(%FILE_IFNDEF%,/,,_,,%(%IFNDEF%)%,IFNDEF)%%
%_%BASE%%
%%File_ifndef_define_suffix%%
%_INSTANCE%
%)%)%)%)%)%,%
%File_ifndef_instance,%(%else-then(%if-no(%is_file_ifndef_instance%,,%(%File_ifndef_instance%)%)%,%(%if-no(%is_file_ifndef_instance%,,%(%file_ifndef_instance%)%)%)%)%)%,%
%FILE_IFNDEF_INSTANCE,%(%else-then(%FILE_IFNDEF_INSTANCE%,%(%toupper(%File_ifndef_instance%)%)%)%)%,%
%file_ifndef_instance,%(%else-then(%_file_ifndef_instance%,%(%tolower(%File_ifndef_instance%)%)%)%)%,%
%is_file_directory,%(%else-then(%is_file_directory%,%(%is_File_directory%)%)%)%,%
%file_directory,%(%else-then(%if-no(%is_file_directory%,,%(%file_directory%)%)%,%(%if-no(%is_file_directory%,,%(%
%%parse(%File_ifndef%,_,,/)%%
%)%)%)%)%)%,%
%File_directory,%(%else-then(%if-no(%is_file_directory%,,%(%File_directory%)%)%,%(%if-no(%is_file_directory%,,%(%file_directory%)%)%)%)%)%,%
%FILE_DIRECTORY,%(%else-then(%FILE_DIRECTORY%,%(%toupper(%File_directory%)%)%)%)%,%
%file_directory,%(%else-then(%_file_directory%,%(%tolower(%File_directory%)%)%)%)%,%
%is_include,%(%else-then(%is_include%,%(%is_Include%)%)%)%,%
%include,%(%else-then(%if-no(%is_include%,,%(%include%)%)%,%(%if-no(%is_include%,,%(%
%%Framework%/base/base.%Header%%
%)%)%)%)%)%,%
%Include,%(%else-then(%if-no(%is_include%,,%(%Include%)%)%,%(%if-no(%is_include%,,%(%include%)%)%)%)%)%,%
%INCLUDE,%(%else-then(%INCLUDE%,%(%toupper(%Include%)%)%)%)%,%
%include,%(%else-then(%_include%,%(%tolower(%Include%)%)%)%)%,%
%is_sys_include,%(%else-then(%is_sys_include%,%(%is_Sys_include%)%)%)%,%
%sys_include,%(%else-then(%if-no(%is_sys_include%,,%(%sys_include%)%)%,%(%if-no(%is_sys_include%,,%(%
%)%)%)%)%)%,%
%Sys_include,%(%else-then(%if-no(%is_sys_include%,,%(%Sys_include%)%)%,%(%if-no(%is_sys_include%,,%(%sys_include%)%)%)%)%)%,%
%SYS_INCLUDE,%(%else-then(%SYS_INCLUDE%,%(%toupper(%Sys_include%)%)%)%)%,%
%sys_include,%(%else-then(%_sys_include%,%(%tolower(%Sys_include%)%)%)%)%,%
%is_includes,%(%else-then(%is_includes%,%(%is_Includes%)%)%)%,%
%includes,%(%else-then(%if-no(%is_includes%,,%(%includes%)%)%,%(%if-no(%is_includes%,,%(%
%)%)%)%)%)%,%
%Includes,%(%else-then(%if-no(%is_includes%,,%(%Includes%)%)%,%(%if-no(%is_includes%,,%(%includes%)%)%)%)%)%,%
%INCLUDES,%(%else-then(%INCLUDES%,%(%toupper(%Includes%)%)%)%)%,%
%includes,%(%else-then(%_includes%,%(%tolower(%Includes%)%)%)%)%,%
%is_sys_includes,%(%else-then(%is_sys_includes%,%(%is_Sys_includes%)%)%)%,%
%sys_includes,%(%else-then(%if-no(%is_sys_includes%,,%(%sys_includes%)%)%,%(%if-no(%is_sys_includes%,,%(%
%%parse(%Include%,;,,,%(#include "%Include%"
)%,Include)%%
%)%)%)%)%)%,%
%Sys_includes,%(%else-then(%if-no(%is_sys_includes%,,%(%Sys_includes%)%)%,%(%if-no(%is_sys_includes%,,%(%sys_includes%)%)%)%)%)%,%
%SYS_INCLUDES,%(%else-then(%SYS_INCLUDES%,%(%toupper(%Sys_includes%)%)%)%)%,%
%sys_includes,%(%else-then(%_sys_includes%,%(%tolower(%Sys_includes%)%)%)%)%,%
%%(%
%%include(%Include_path%/%Header%-%Header%-%Body%-%Body%.t)%%
%)%)%