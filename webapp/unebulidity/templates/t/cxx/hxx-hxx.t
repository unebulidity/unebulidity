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
%#   File: hxx-hxx.t
%#
%# Author: $author$
%#   Date: 12/8/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_file_ifndef_begin,%(%else-then(%is_file_ifndef_begin%,%(%is_File_ifndef_begin%)%)%)%,%
%file_ifndef_begin,%(%else-then(%if-no(%is_file_ifndef_begin%,,%(%file_ifndef_begin%)%)%,%(%if-no(%is_file_ifndef_begin%,,%(%
%#ifndef %File_ifndef_define%
#define %File_ifndef_define%
%
%)%)%)%)%)%,%
%File_ifndef_begin,%(%else-then(%if-no(%is_file_ifndef_begin%,,%(%File_ifndef_begin%)%)%,%(%if-no(%is_file_ifndef_begin%,,%(%file_ifndef_begin%)%)%)%)%)%,%
%FILE_IFNDEF_BEGIN,%(%else-then(%FILE_IFNDEF_BEGIN%,%(%toupper(%File_ifndef_begin%)%)%)%)%,%
%file_ifndef_begin,%(%else-then(%_file_ifndef_begin%,%(%tolower(%File_ifndef_begin%)%)%)%)%,%
%is_file_ifndef_end,%(%else-then(%is_file_ifndef_end%,%(%is_File_ifndef_end%)%)%)%,%
%file_ifndef_end,%(%else-then(%if-no(%is_file_ifndef_end%,,%(%file_ifndef_end%)%)%,%(%if-no(%is_file_ifndef_end%,,%(%
%
#endif /** ndef %File_ifndef_define% **/
%
%)%)%)%)%)%,%
%File_ifndef_end,%(%else-then(%if-no(%is_file_ifndef_end%,,%(%File_ifndef_end%)%)%,%(%if-no(%is_file_ifndef_end%,,%(%file_ifndef_end%)%)%)%)%)%,%
%FILE_IFNDEF_END,%(%else-then(%FILE_IFNDEF_END%,%(%toupper(%File_ifndef_end%)%)%)%)%,%
%file_ifndef_end,%(%else-then(%_file_ifndef_end%,%(%tolower(%File_ifndef_end%)%)%)%)%,%
%%(%
%%File_ifndef_begin%%
%%then-if(%Includes%%Sys_includes%,%(
)%)%%
%%Namespace_begin%%
%%include(%Include_path%/%File_prefix%%Header%.t)%%
%%Namespace_end%%
%%File_ifndef_end%%
%)%)%