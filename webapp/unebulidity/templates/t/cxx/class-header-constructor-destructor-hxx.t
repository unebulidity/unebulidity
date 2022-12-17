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
%#   File: class-header-constructor-destructor-hxx.t
%#
%# Author: $author$
%#   Date: 12/17/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%%(%
%%if(%equal(%Copy_constructor_access%,%Class_access%)%,%(%
%%if(%IsCopy_constructor%,%(%
%    %Copy_constructor_type%%Classt%%(()%const %Classt% &copy%())%%
%%if(%Extends%,%(: extends%(()%copy%())%)%)%%
% {
    }
)%)%%
%)%)%%
%%if(%equal(%Constructor_access%,%Class_access%)%,%(%
%%if(%IsConstructor%,%(%
%    %Constructor_type%%Classt%%(()%%())%%
% {
    }
)%)%%
%)%)%%
%%if(%equal(%Destructor_access%,%Class_access%)%,%(%
%%if(%IsDestructor%,%(%
%    %Destructor_type%~%Classt%%(()%%())%%
% {
    }
)%)%%
%)%)%%
%%else(%equal(%Copy_constructor_access%,%Class_access%)%,%(%
%%if(%IsCopy_constructor%,%(%
%%else(%equal(%Copy_constructor_access%,%Class_access%)%,%(%Copy_constructor_access%:
)%)%%
%    %Copy_constructor_type%%Classt%%(()%const %Classt% &copy%())%%
%%if(%Extends%,%(: extends%(()%copy%())%)%)%%
% {
    }
)%)%%
%)%)%%
%%else(%equal(%Constructor_access%,%Class_access%)%,%(%
%%if(%IsConstructor%,%(%
%%else(%equal(%Constructor_access%,%Class_access%)%,%(%Constructor_access%:
)%)%%
%    %Constructor_type%%Classt%%(()%%())%%
% {
    }
)%)%%
%)%)%%
%%else(%equal(%Destructor_access%,%Class_access%)%,%(%
%%if(%IsDestructor%,%(%
%%else(%equal(%Destructor_access%,%Class_access%)%,%(%Destructor_access%:
)%)%%
%    %Destructor_type%~%Classt%%(()%%())%%
% {
    }
)%)%%
%)%)%%
%%if(%
%%else(%equal(%Copy_constructor_access%,%Class_access%)%,%(%IsCopy_constructor%)%)%%
%%else(%equal(%Constructor_access%,%Class_access%)%,%(%IsConstructor%)%)%%
%%else(%equal(%Destructor_access%,%Class_access%)%,%(%IsDestructor%)%)%%
%,%(%
%%Class_access%:
%
%)%)%%
%)%)%