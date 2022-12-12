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
%#   File: version-main-class-body-cc.t
%#
%# Author: $author$
%#   Date: 12/11/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%%(%
%%if(%Class%,%(%
%
#ifdef XOS_CONSOLE_MAIN_MAIN
#include "xos/console/main_main.cc"
#ifndef %FILE_IFNDEF_INSTANCE%
#define %FILE_IFNDEF_INSTANCE%
#else /* ndef %FILE_IFNDEF_INSTANCE% */
#endif /* ndef %FILE_IFNDEF_INSTANCE% */
#else /* def XOS_CONSOLE_MAIN_MAIN */
#endif /* def XOS_CONSOLE_MAIN_MAIN */

#ifndef %FILE_IFNDEF_INSTANCE%
/* #define %FILE_IFNDEF_INSTANCE% */
#else /* ndef %FILE_IFNDEF_INSTANCE% */
#endif /* ndef %FILE_IFNDEF_INSTANCE% */
%
%)%)%%
%%Namespace_begin%%
%%if(%Class%,%(%
%
/*
**************************************************************************
** class %Classt%
**************************************************************************
*/
#ifdef %FILE_IFNDEF_INSTANCE%
static %Class% the_%Class%;
#endif /* def %FILE_IFNDEF_INSTANCE% */
%
%)%)%%
%%Namespace_end%%
%)%)%