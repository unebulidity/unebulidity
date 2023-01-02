%########################################################################
%# Copyright (c) 1988-2023 $organization$
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
%#   File: main-options-define-hpp.t
%#
%# Author: $author$
%#   Date: 1/2/2023
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_ifndef,%(%else-then(%is_ifndef%,%(%is_Ifndef%)%)%)%,%
%ifndef,%(%else-then(%if-no(%is_ifndef%,,%(%ifndef%)%)%,%(%if-no(%is_ifndef%,,%(%
%%Namespace_ifndef%%
%)%)%)%)%)%,%
%Ifndef,%(%else-then(%if-no(%is_ifndef%,,%(%Ifndef%)%)%,%(%if-no(%is_ifndef%,,%(%ifndef%)%)%)%)%)%,%
%IFNDEF,%(%else-then(%IFNDEF%,%(%toupper(%Ifndef%)%)%)%)%,%
%ifndef,%(%else-then(%_ifndef%,%(%tolower(%Ifndef%)%)%)%)%,%
%is_extends_ifndef,%(%else-then(%is_extends_ifndef%,%(%is_Extends_ifndef%)%)%)%,%
%extends_ifndef,%(%else-then(%if-no(%is_extends_ifndef%,,%(%extends_ifndef%)%)%,%(%if-no(%is_extends_ifndef%,,%(%
%%Extends_namespace_ifndef%%
%)%)%)%)%)%,%
%Extends_ifndef,%(%else-then(%if-no(%is_extends_ifndef%,,%(%Extends_ifndef%)%)%,%(%if-no(%is_extends_ifndef%,,%(%extends_ifndef%)%)%)%)%)%,%
%EXTENDS_IFNDEF,%(%else-then(%EXTENDS_IFNDEF%,%(%toupper(%Extends_ifndef%)%)%)%)%,%
%extends_ifndef,%(%else-then(%_extends_ifndef%,%(%tolower(%Extends_ifndef%)%)%)%)%,%
%%(%
%%parse(%Parameters%,;,,,,%(%
%%with(%
%is_short,%(%else-then(%is_short%,%(%is_Short%)%)%)%,%
%short,%(%else-then(%if-no(%is_short%,,%(%short%)%)%,%(%if-no(%is_short%,,%(%else-then(%left(%Parameter%,:)%,%(%left(%Parameter%,=)%)%)%)%)%)%)%)%,%
%Short,%(%else-then(%if-no(%is_short%,,%(%Short%)%)%,%(%if-no(%is_short%,,%(%short%)%)%)%)%)%,%
%SHORT,%(%else-then(%SHORT%,%(%toupper(%Short%)%)%)%)%,%
%short,%(%else-then(%_short%,%(%tolower(%Short%)%)%)%)%,%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%
%%else-then(%right(%Parameter%,=)%,%(%replace(%(-)%,%(_)%,%right(%Parameter%,:)%)%)%)%%
%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%is_long,%(%else-then(%is_long%,%(%is_Long%)%)%)%,%
%long,%(%else-then(%if-no(%is_long%,,%(%long%)%)%,%(%if-no(%is_long%,,%(%
%%else-then(%right(%left(%Parameter%,=)%,:)%,%(%replace(%(_)%,%(-)%,%Name%)%)%)%%
%)%)%)%)%)%,%
%Long,%(%else-then(%if-no(%is_long%,,%(%Long%)%)%,%(%if-no(%is_long%,,%(%long%)%)%)%)%)%,%
%LONG,%(%else-then(%LONG%,%(%toupper(%Long%)%)%)%)%,%
%long,%(%else-then(%_long%,%(%tolower(%Long%)%)%)%)%,%
%is_char,%(%else-then(%is_char%,%(%is_Char%)%)%)%,%
%char,%(%else-then(%if-no(%is_char%,,%(%char%)%)%,%(%if-no(%is_char%,,%(%Short%)%)%)%)%)%,%
%Char,%(%else-then(%if-no(%is_char%,,%(%Char%)%)%,%(%if-no(%is_char%,,%(%char%)%)%)%)%)%,%
%CHAR,%(%else-then(%CHAR%,%(%toupper(%Char%)%)%)%)%,%
%char,%(%else-then(%_char%,%(%tolower(%Char%)%)%)%)%,%
%%(
#define %IFNDEF%_%CLASS%_%NAME%_OPT "%Long%"
#define %IFNDEF%_%CLASS%_%NAME%_OPTARG_REQUIRED MAIN_OPT_ARGUMENT_%REQUIRED%
#define %IFNDEF%_%CLASS%_%NAME%_OPTARG_RESULT 0
#define %IFNDEF%_%CLASS%_%NAME%_OPTARG ""
#define %IFNDEF%_%CLASS%_%NAME%_OPTUSE ""
#define %IFNDEF%_%CLASS%_%NAME%_OPTVAL_S "%Short%%if(%Optional%,%(::)%,%(%else(%None%,%(:)%)%)%)%"
#define %IFNDEF%_%CLASS%_%NAME%_OPTVAL_C '%Char%'
#define %IFNDEF%_%CLASS%_%NAME%_OPTION \
   {%IFNDEF%_%CLASS%_%NAME%_OPT, \
    %IFNDEF%_%CLASS%_%NAME%_OPTARG_REQUIRED, \
    %IFNDEF%_%CLASS%_%NAME%_OPTARG_RESULT, \
    %IFNDEF%_%CLASS%_%NAME%_OPTVAL_C}, \
)%)%%
%)%,Parameter)%%
%
///////////////////////////////////////////////////////////////////////
#define %IFNDEF%_%CLASS%_OPTIONS_CHARS_EXTEND \
%parse(%Parameters%,;,,,,%(%
%%with(%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%
%%else-then(%right(%Parameter%,=)%,%(%replace(%(-)%,%(_)%,%right(%Parameter%,:)%)%)%)%%
%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%%(   %IFNDEF%_%CLASS%_%NAME%_OPTVAL_S \
)%)%%
%)%,Parameter)%%
%
#define %IFNDEF%_%CLASS%_OPTIONS_OPTIONS_EXTEND \
%parse(%Parameters%,;,,,,%(%
%%with(%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%
%%else-then(%right(%Parameter%,=)%,%(%replace(%(-)%,%(_)%,%right(%Parameter%,:)%)%)%)%%
%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%%(   %IFNDEF%_%CLASS%_%NAME%_OPTION \
)%)%%
%)%,Parameter)%%
%
///////////////////////////////////////////////////////////////////////
#define %IFNDEF%_%CLASS%_OPTIONS_CHARS \
   %IFNDEF%_%CLASS%_OPTIONS_CHARS_EXTEND \
   %EXTENDS_IFNDEF%_%EXTENDS%_OPTIONS_CHARS \

#define %IFNDEF%_%CLASS%_OPTIONS_OPTIONS \
   %IFNDEF%_%CLASS%_OPTIONS_OPTIONS_EXTEND \
   %EXTENDS_IFNDEF%_%EXTENDS%_OPTIONS_OPTIONS \

///////////////////////////////////////////////////////////////////////
#define %IFNDEF%_%CLASS%_ARGS 0
#define %IFNDEF%_%CLASS%_ARGV 0,
%
%)%)%