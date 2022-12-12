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
%#   File: cc-cc.t
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
%is_namespace_begin,%(%else-then(%is_namespace_begin%,%(%is_Namespace_begin%)%)%)%,%
%namespace_begin,%(%else-then(%if-no(%is_namespace_begin%,,%(%namespace_begin%)%)%,%(%if-no(%is_namespace_begin%,,%(%
%%parse(%Namespace%,/,,,,%(
namespace %ns% {)%,ns)%%
%)%)%)%)%)%,%
%Namespace_begin,%(%else-then(%if-no(%is_namespace_begin%,,%(%Namespace_begin%)%)%,%(%if-no(%is_namespace_begin%,,%(%namespace_begin%)%)%)%)%)%,%
%NAMESPACE_BEGIN,%(%else-then(%NAMESPACE_BEGIN%,%(%toupper(%Namespace_begin%)%)%)%)%,%
%namespace_begin,%(%else-then(%_namespace_begin%,%(%tolower(%Namespace_begin%)%)%)%)%,%
%is_namespace_end,%(%else-then(%is_namespace_end%,%(%is_Namespace_end%)%)%)%,%
%namespace_end,%(%else-then(%if-no(%is_namespace_end%,,%(%namespace_end%)%)%,%(%if-no(%is_namespace_end%,,%(%
%%reverse-parse(%Namespace%,/,,,,%(} /** namespace %ns% **/
)%,ns)%%
%)%)%)%)%)%,%
%Namespace_end,%(%else-then(%if-no(%is_namespace_end%,,%(%Namespace_end%)%)%,%(%if-no(%is_namespace_end%,,%(%namespace_end%)%)%)%)%)%,%
%NAMESPACE_END,%(%else-then(%NAMESPACE_END%,%(%toupper(%Namespace_end%)%)%)%)%,%
%namespace_end,%(%else-then(%_namespace_end%,%(%tolower(%Namespace_end%)%)%)%)%,%
%%(%
%%then-if(%if-then(%if-then(%File_directory%,/)%%Base%.%Header%,%("
)%)%,%(#include ")%)%%
%%include(%Include_path%/%File_prefix%%Body%.t)%%
%)%)%