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
%#   File: main-class-hxx-cxx.t
%#
%# Author: $author$
%#   Date: 12/13/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_xos,%(%else-then(%is_xos%,%(%is_Xos%)%)%)%,%
%xos,%(%else-then(%if-no(%is_xos%,,%(%xos%)%)%,%(%if-no(%is_xos%,,%(%
%%else-then(%include(%Include_path%/../t/source-xos.t)%,%(xos)%)%%
%)%)%)%)%)%,%
%Xos,%(%else-then(%if-no(%is_xos%,,%(%Xos%)%)%,%(%if-no(%is_xos%,,%(%xos%)%)%)%)%)%,%
%XOS,%(%else-then(%XOS%,%(%toupper(%Xos%)%)%)%)%,%
%xos,%(%else-then(%_xos%,%(%tolower(%Xos%)%)%)%)%,%
%is_app,%(%else-then(%is_app%,%(%is_App%)%)%)%,%
%app,%(%else-then(%if-no(%is_app%,,%(%app%)%)%,%(%if-no(%is_app%,,%(%
%%else-then(%include(%Include_path%/../t/source-app.t)%,%(app)%)%%
%)%)%)%)%)%,%
%App,%(%else-then(%if-no(%is_app%,,%(%App%)%)%,%(%if-no(%is_app%,,%(%app%)%)%)%)%)%,%
%APP,%(%else-then(%APP%,%(%toupper(%App%)%)%)%)%,%
%app,%(%else-then(%_app%,%(%tolower(%App%)%)%)%)%,%
%is_console,%(%else-then(%is_console%,%(%is_Console%)%)%)%,%
%console,%(%else-then(%if-no(%is_console%,,%(%console%)%)%,%(%if-no(%is_console%,,%(%
%%else-then(%include(%Include_path%/../t/source-console.t)%,%(console)%)%%
%)%)%)%)%)%,%
%Console,%(%else-then(%if-no(%is_console%,,%(%Console%)%)%,%(%if-no(%is_console%,,%(%console%)%)%)%)%)%,%
%CONSOLE,%(%else-then(%CONSOLE%,%(%toupper(%Console%)%)%)%)%,%
%console,%(%else-then(%_console%,%(%tolower(%Console%)%)%)%)%,%
%is_applicatiom,%(%else-then(%is_applicatiom%,%(%is_Applicatiom%)%)%)%,%
%applicatiom,%(%else-then(%if-no(%is_applicatiom%,,%(%applicatiom%)%)%,%(%if-no(%is_applicatiom%,,%(%
%%else-then(%include(%Include_path%/../t/source-applicatiom.t)%,%(%App%/%Console%)%)%%
%)%)%)%)%)%,%
%Applicatiom,%(%else-then(%if-no(%is_applicatiom%,,%(%Applicatiom%)%)%,%(%if-no(%is_applicatiom%,,%(%applicatiom%)%)%)%)%)%,%
%APPLICATIOM,%(%else-then(%APPLICATIOM%,%(%toupper(%Applicatiom%)%)%)%)%,%
%applicatiom,%(%else-then(%_applicatiom%,%(%tolower(%Applicatiom%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(%
%%else-then(%include(%Include_path%/../t/source-framework.t)%,%(%Xos%)%)%%
%)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_library,%(%else-then(%is_library%,%(%is_Library%)%)%)%,%
%library,%(%else-then(%if-no(%is_library%,,%(%library%)%)%,%(%if-no(%is_library%,,%(%
%%else-then(%include(%Include_path%/../t/framework.t)%,%(framework)%)%%
%)%)%)%)%)%,%
%Library,%(%else-then(%if-no(%is_library%,,%(%Library%)%)%,%(%if-no(%is_library%,,%(%library%)%)%)%)%)%,%
%LIBRARY,%(%else-then(%LIBRARY%,%(%toupper(%Library%)%)%)%)%,%
%library,%(%else-then(%_library%,%(%tolower(%Library%)%)%)%)%,%
%is_what,%(%else-then(%is_what%,%(%is_What%)%)%)%,%
%what,%(%else-then(%if-no(%is_what%,,%(%what%)%)%,%(%if-no(%is_what%,,%(%
%%else-then(%include(%Include_path%/../t/source-what.t)%,%(%Library%)%)%%
%)%)%)%)%)%,%
%What,%(%else-then(%if-no(%is_what%,,%(%What%)%)%,%(%if-no(%is_what%,,%(%what%)%)%)%)%)%,%
%WHAT,%(%else-then(%WHAT%,%(%toupper(%What%)%)%)%)%,%
%what,%(%else-then(%_what%,%(%tolower(%What%)%)%)%)%,%
%is_namespace,%(%else-then(%is_namespace%,%(%is_Namespace%)%)%)%,%
%namespace,%(%else-then(%if-no(%is_namespace%,,%(%namespace%)%)%,%(%if-no(%is_namespace%,,%(%
%%Framework%/%Applicatiom%/%What%%
%)%)%)%)%)%,%
%Namespace,%(%else-then(%if-no(%is_namespace%,,%(%Namespace%)%)%,%(%if-no(%is_namespace%,,%(%namespace%)%)%)%)%)%,%
%NAMESPACE,%(%else-then(%NAMESPACE%,%(%toupper(%Namespace%)%)%)%)%,%
%namespace,%(%else-then(%_namespace%,%(%tolower(%Namespace%)%)%)%)%,%
%is_namespace_path,%(%else-then(%is_namespace_path%,%(%is_Namespace_path%)%)%)%,%
%namespace_path,%(%else-then(%if-no(%is_namespace_path%,,%(%namespace_path%)%)%,%(%if-no(%is_namespace_path%,,%(%
%%parse(%Namespace%,::,,%(/)%)%%
%)%)%)%)%)%,%
%Namespace_path,%(%else-then(%if-no(%is_namespace_path%,,%(%Namespace_path%)%)%,%(%if-no(%is_namespace_path%,,%(%namespace_path%)%)%)%)%)%,%
%NAMESPACE_PATH,%(%else-then(%NAMESPACE_PATH%,%(%toupper(%Namespace_path%)%)%)%)%,%
%namespace_path,%(%else-then(%_namespace_path%,%(%tolower(%Namespace_path%)%)%)%)%,%
%is_class,%(%else-then(%is_class%,%(%is_Class%)%)%)%,%
%class,%(%else-then(%if-no(%is_class%,,%(%class%)%)%,%(%if-no(%is_class%,,%(main)%)%)%)%)%,%
%Class,%(%else-then(%if-no(%is_class%,,%(%Class%)%)%,%(%if-no(%is_class%,,%(%class%)%)%)%)%)%,%
%CLASS,%(%else-then(%CLASS%,%(%toupper(%Class%)%)%)%)%,%
%class,%(%else-then(%_class%,%(%tolower(%Class%)%)%)%)%,%
%is_extends,%(%else-then(%is_extends%,%(%is_Extends%)%)%)%,%
%extends,%(%else-then(%if-no(%is_extends%,,%(%extends%)%)%,%(%if-no(%is_extends%,,%(main_opt)%)%)%)%)%,%
%Extends,%(%else-then(%if-no(%is_extends%,,%(%Extends%)%)%,%(%if-no(%is_extends%,,%(%extends%)%)%)%)%)%,%
%EXTENDS,%(%else-then(%EXTENDS%,%(%toupper(%Extends%)%)%)%)%,%
%extends,%(%else-then(%_extends%,%(%tolower(%Extends%)%)%)%)%,%
%is_implements,%(%else-then(%is_implements%,%(%is_Implements%)%)%)%,%
%implements,%(%else-then(%if-no(%is_implements%,,%(%implements%)%)%,%(%if-no(%is_implements%,,%(typename TExtends::implements)%)%)%)%)%,%
%Implements,%(%else-then(%if-no(%is_implements%,,%(%Implements%)%)%,%(%if-no(%is_implements%,,%(%implements%)%)%)%)%)%,%
%IMPLEMENTS,%(%else-then(%IMPLEMENTS%,%(%toupper(%Implements%)%)%)%)%,%
%implements,%(%else-then(%_implements%,%(%tolower(%Implements%)%)%)%)%,%
%is_include,%(%else-then(%is_include%,%(%is_Include%)%)%)%,%
%include,%(%else-then(%if-no(%is_include%,,%(%include%)%)%,%(%if-no(%is_include%,,%(%
%%Namespace_path%/%Extends%%then-if(%Extension%,%(.)%)%%
%)%)%)%)%)%,%
%Include,%(%else-then(%if-no(%is_include%,,%(%Include%)%)%,%(%if-no(%is_include%,,%(%include%)%)%)%)%)%,%
%INCLUDE,%(%else-then(%INCLUDE%,%(%toupper(%Include%)%)%)%)%,%
%include,%(%else-then(%_include%,%(%tolower(%Include%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%Class%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_file_prefix,%(%else-then(%is_file_prefix%,%(%is_File_prefix%)%)%)%,%
%file_prefix,%(%else-then(%if-no(%is_file_prefix%,,%(%file_prefix%)%)%,%(%if-no(%is_file_prefix%,,%(main-class-)%)%)%)%)%,%
%File_prefix,%(%else-then(%if-no(%is_file_prefix%,,%(%File_prefix%)%)%,%(%if-no(%is_file_prefix%,,%(%file_prefix%)%)%)%)%)%,%
%FILE_PREFIX,%(%else-then(%FILE_PREFIX%,%(%toupper(%File_prefix%)%)%)%)%,%
%file_prefix,%(%else-then(%_file_prefix%,%(%tolower(%File_prefix%)%)%)%)%,%
%%(%
%%include(%Include_path%/hxx-cxx.t)%%
%)%)%