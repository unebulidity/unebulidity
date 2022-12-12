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
%#   File: h-h-c-c.t
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
%%reverse-parse(%Namespace%,/,,,,%(} /* namespace %ns% */
)%,ns)%%
%)%)%)%)%)%,%
%Namespace_end,%(%else-then(%if-no(%is_namespace_end%,,%(%Namespace_end%)%)%,%(%if-no(%is_namespace_end%,,%(%namespace_end%)%)%)%)%)%,%
%NAMESPACE_END,%(%else-then(%NAMESPACE_END%,%(%toupper(%Namespace_end%)%)%)%)%,%
%namespace_end,%(%else-then(%_namespace_end%,%(%tolower(%Namespace_end%)%)%)%)%,%
%is_if_defined__cplusplus_begin,%(%else-then(%is_if_defined__cplusplus_begin%,%(%is_If_defined__cplusplus_begin%)%)%)%,%
%if_defined__cplusplus_begin,%(%else-then(%if-no(%is_if_defined__cplusplus_begin%,,%(%if_defined__cplusplus_begin%)%)%,%(%if-no(%is_if_defined__cplusplus_begin%,,%(%
%#if defined(__cplusplus)
)%)%)%)%)%,%
%If_defined__cplusplus_begin,%(%else-then(%if-no(%is_if_defined__cplusplus_begin%,,%(%If_defined__cplusplus_begin%)%)%,%(%if-no(%is_if_defined__cplusplus_begin%,,%(%if_defined__cplusplus_begin%)%)%)%)%)%,%
%IF_DEFINED__CPLUSPLUS_BEGIN,%(%else-then(%IF_DEFINED__CPLUSPLUS_BEGIN%,%(%toupper(%If_defined__cplusplus_begin%)%)%)%)%,%
%if_defined__cplusplus_begin,%(%else-then(%_if_defined__cplusplus_begin%,%(%tolower(%If_defined__cplusplus_begin%)%)%)%)%,%
%is_if_defined__cplusplus_end,%(%else-then(%is_if_defined__cplusplus_end%,%(%is_If_defined__cplusplus_end%)%)%)%,%
%if_defined__cplusplus_end,%(%else-then(%if-no(%is_if_defined__cplusplus_end%,,%(%if_defined__cplusplus_end%)%)%,%(%if-no(%is_if_defined__cplusplus_end%,,%(%
%#else /* defined(__cplusplus) */
#endif /* defined(__cplusplus) */
)%)%)%)%)%,%
%If_defined__cplusplus_end,%(%else-then(%if-no(%is_if_defined__cplusplus_end%,,%(%If_defined__cplusplus_end%)%)%,%(%if-no(%is_if_defined__cplusplus_end%,,%(%if_defined__cplusplus_end%)%)%)%)%)%,%
%IF_DEFINED__CPLUSPLUS_END,%(%else-then(%IF_DEFINED__CPLUSPLUS_END%,%(%toupper(%If_defined__cplusplus_end%)%)%)%)%,%
%if_defined__cplusplus_end,%(%else-then(%_if_defined__cplusplus_end%,%(%tolower(%If_defined__cplusplus_end%)%)%)%)%,%
%is_if_defined__cplusplus_namespace_begin,%(%else-then(%is_if_defined__cplusplus_namespace_begin%,%(%is_If_defined__cplusplus_namespace_begin%)%)%)%,%
%if_defined__cplusplus_namespace_begin,%(%else-then(%if-no(%is_if_defined__cplusplus_namespace_begin%,,%(%if_defined__cplusplus_namespace_begin%)%)%,%(%if-no(%is_if_defined__cplusplus_namespace_begin%,,%(%
%
#if defined(__cplusplus) %
%%Namespace_begin%
#else /* defined(__cplusplus) */
#endif /* defined(__cplusplus) */
)%)%)%)%)%,%
%If_defined__cplusplus_namespace_begin,%(%else-then(%if-no(%is_if_defined__cplusplus_namespace_begin%,,%(%If_defined__cplusplus_namespace_begin%)%)%,%(%if-no(%is_if_defined__cplusplus_namespace_begin%,,%(%if_defined__cplusplus_namespace_begin%)%)%)%)%)%,%
%IF_DEFINED__CPLUSPLUS_NAMESPACE_BEGIN,%(%else-then(%IF_DEFINED__CPLUSPLUS_NAMESPACE_BEGIN%,%(%toupper(%If_defined__cplusplus_namespace_begin%)%)%)%)%,%
%if_defined__cplusplus_namespace_begin,%(%else-then(%_if_defined__cplusplus_namespace_begin%,%(%tolower(%If_defined__cplusplus_namespace_begin%)%)%)%)%,%
%is_if_defined__cplusplus_namespace_end,%(%else-then(%is_if_defined__cplusplus_namespace_end%,%(%is_If_defined__cplusplus_namespace_end%)%)%)%,%
%if_defined__cplusplus_namespace_end,%(%else-then(%if-no(%is_if_defined__cplusplus_namespace_end%,,%(%if_defined__cplusplus_namespace_end%)%)%,%(%if-no(%is_if_defined__cplusplus_namespace_end%,,%(%
%
#if defined(__cplusplus) 
%Namespace_end%%
%#else /* defined(__cplusplus) */
#endif /* defined(__cplusplus) */
)%)%)%)%)%,%
%If_defined__cplusplus_namespace_end,%(%else-then(%if-no(%is_if_defined__cplusplus_namespace_end%,,%(%If_defined__cplusplus_namespace_end%)%)%,%(%if-no(%is_if_defined__cplusplus_namespace_end%,,%(%if_defined__cplusplus_namespace_end%)%)%)%)%)%,%
%IF_DEFINED__CPLUSPLUS_NAMESPACE_END,%(%else-then(%IF_DEFINED__CPLUSPLUS_NAMESPACE_END%,%(%toupper(%If_defined__cplusplus_namespace_end%)%)%)%)%,%
%if_defined__cplusplus_namespace_end,%(%else-then(%_if_defined__cplusplus_namespace_end%,%(%tolower(%If_defined__cplusplus_namespace_end%)%)%)%)%,%
%%(%
%%if(%IsHeader%,%(%
%%include(%Include_path%/%Header%-%Header%.t)%%
%)%,%(%
%%include(%Include_path%/%Body%-%Body%.t)%%
%)%)%%
%)%)%