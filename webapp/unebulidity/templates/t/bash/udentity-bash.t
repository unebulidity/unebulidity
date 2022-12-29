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
%#   File: udentity-bash.t
%#
%# Author: $author$
%#   Date: 12/26/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_udentity,%(%else-then(%is_udentity%,%(%is_Udentity%)%)%)%,%
%udentity,%(%else-then(%if-no(%is_udentity%,,%(%udentity%)%)%,%(%if-no(%is_udentity%,,%(%
%%else-then(%include(%Include_path%/../t/Udentity.t)%,udentity)%%
%)%)%)%)%)%,%
%Udentity,%(%else-then(%if-no(%is_udentity%,,%(%Udentity%)%)%,%(%if-no(%is_udentity%,,%(%udentity%)%)%)%)%)%,%
%UDENTITY,%(%else-then(%UDENTITY%,%(%toupper(%Udentity%)%)%)%)%,%
%udentity,%(%else-then(%_udentity%,%(%tolower(%Udentity%)%)%)%)%,%
%is_title,%(%else-then(%is_title%,%(%is_Title%)%)%)%,%
%title,%(%else-then(%if-no(%is_title%,,%(%title%)%)%,%(%if-no(%is_title%,,%(%
%udentity script for %Udentity%%
%)%)%)%)%)%,%
%Title,%(%else-then(%if-no(%is_title%,,%(%Title%)%)%,%(%if-no(%is_title%,,%(%title%)%)%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_title%,%(%tolower(%Title%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%else-then(%filebase(%File%)%,%
%%Udentity%%
%)%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_extension,%(%else-then(%is_extension%,%(%is_Extension%)%)%)%,%
%extension,%(%else-then(%if-no(%is_extension%,,%(%extension%)%)%,%(%if-no(%is_extension%,,%(%else-then(%fileextension(%File%)%,%
%sh%
%)%)%)%)%)%)%,%
%Extension,%(%else-then(%if-no(%is_extension%,,%(%Extension%)%)%,%(%if-no(%is_extension%,,%(%extension%)%)%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_extension%,%(%tolower(%Extension%)%)%)%)%,%
%is_baseextension,%(%else-then(%is_baseextension%,%(%is_BaseExtension%)%)%)%,%
%baseextension,%(%else-then(%if-no(%is_baseextension%,,%(%baseextension%)%)%,%(%if-no(%is_baseextension%,,%(%
%%Base%%then-if(%Extension%,%(.)%)%%
%)%)%)%)%)%,%
%BaseExtension,%(%else-then(%if-no(%is_baseextension%,,%(%BaseExtension%)%)%,%(%if-no(%is_baseextension%,,%(%baseextension%)%)%)%)%)%,%
%BASEEXTENSION,%(%else-then(%BASEEXTENSION%,%(%toupper(%BaseExtension%)%)%)%)%,%
%baseextension,%(%else-then(%_baseextension%,%(%tolower(%BaseExtension%)%)%)%)%,%
%is_plain,%(%else-then(%is_plain%,%(%is_Plain%)%)%)%,%
%plain,%(%else-then(%if-no(%is_plain%,,%(%plain%)%)%,%(%if-no(%is_plain%,,%(%
%$dirname'/'$udentity'-plain.txt'%
%)%)%)%)%)%,%
%Plain,%(%else-then(%if-no(%is_plain%,,%(%Plain%)%)%,%(%if-no(%is_plain%,'',%(%plain%)%)%)%)%)%,%
%PLAIN,%(%else-then(%PLAIN%,%(%toupper(%Plain%)%)%)%)%,%
%plain,%(%else-then(%_plain%,%(%tolower(%Plain%)%)%)%)%,%
%is_cipher,%(%else-then(%is_cipher%,%(%is_Cipher%)%)%)%,%
%cipher,%(%else-then(%if-no(%is_cipher%,,%(%cipher%)%)%,%(%if-no(%is_cipher%,,%(%
%$dirname'/'$udentity'.txt'%
%)%)%)%)%)%,%
%Cipher,%(%else-then(%if-no(%is_cipher%,,%(%Cipher%)%)%,%(%if-no(%is_cipher%,'',%(%cipher%)%)%)%)%)%,%
%CIPHER,%(%else-then(%CIPHER%,%(%toupper(%Cipher%)%)%)%)%,%
%cipher,%(%else-then(%_cipher%,%(%tolower(%Cipher%)%)%)%)%,%
%is_ecipher,%(%else-then(%is_ecipher%,%(%is_Ecipher%)%)%)%,%
%ecipher,%(%else-then(%if-no(%is_ecipher%,,%(%ecipher%)%)%,%(%if-no(%is_ecipher%,,%(%
%'%if(%Cipher%,ecipher)%'%
%)%)%)%)%)%,%
%Ecipher,%(%else-then(%if-no(%is_ecipher%,,%(%Ecipher%)%)%,%(%if-no(%is_ecipher%,'',%(%ecipher%)%)%)%)%)%,%
%ECIPHER,%(%else-then(%ECIPHER%,%(%toupper(%Ecipher%)%)%)%)%,%
%ecipher,%(%else-then(%_ecipher%,%(%tolower(%Ecipher%)%)%)%)%,%
%is_dcipher,%(%else-then(%is_dcipher%,%(%is_Dcipher%)%)%)%,%
%dcipher,%(%else-then(%if-no(%is_dcipher%,,%(%dcipher%)%)%,%(%if-no(%is_dcipher%,,%(%
%'%if(%Cipher%,dcipher)%'%
%)%)%)%)%)%,%
%Dcipher,%(%else-then(%if-no(%is_dcipher%,,%(%Dcipher%)%)%,%(%if-no(%is_dcipher%,'',%(%dcipher%)%)%)%)%)%,%
%DCIPHER,%(%else-then(%DCIPHER%,%(%toupper(%Dcipher%)%)%)%)%,%
%dcipher,%(%else-then(%_dcipher%,%(%tolower(%Dcipher%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-bash.t)%%
%dirname=`dirname $0`
basename=`basename $0`

udentity=%Udentity%
plain=%Plain%
cipher=%Cipher%
ecipher=%Ecipher%
dcipher=%Dcipher%

if [ "$1" != "" ]; then
    if [ "$ecipher" != "" ]; then
        if [ "$plain" != "" ]; then
            echo $1 > $plain
            $ecipher `cat $plain` > $cipher
            cat $cipher
        else # [ "$plain" != "" ]; then
            $ecipher $1 > $cipher
            cat $cipher
        fi # [ "$plain" != "" ]; then
    else # [ "$ecipher" != "" ]; then
        echo $1 > $plain
        cat $plain
    fi # [ "$ecipher" != "" ]; then
else # [ "$1" != "" ]; then
    if [ "$dcipher" != "" ]; then
        $dcipher `cat $cipher`
    else # [ "$dcipher" != "" ]; then
        cat $plain
    fi # [ "$dcipher" != "" ]; then
fi # [ "$1" != "" ]; then
%
%)%)%