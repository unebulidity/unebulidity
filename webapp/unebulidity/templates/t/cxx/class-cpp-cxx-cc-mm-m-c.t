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
%#   File: class-cpp-cxx-cc-mm-m-c.t
%#
%# Author: $author$
%#   Date: 12/9/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_class,%(%else-then(%is_class%,%(%is_Class%)%)%)%,%
%class,%(%else-then(%if-no(%is_class%,,%(%class%)%)%,%(%if-no(%is_class%,,%(%
%derived%
%)%)%)%)%)%,%
%Class,%(%else-then(%if-no(%is_class%,,%(%Class%)%)%,%(%if-no(%is_class%,,%(%class%)%)%)%)%)%,%
%CLASS,%(%else-then(%CLASS%,%(%toupper(%Class%)%)%)%)%,%
%class,%(%else-then(%_class%,%(%tolower(%Class%)%)%)%)%,%
%is_implements,%(%else-then(%is_implements%,%(%is_Implements%)%)%)%,%
%implements,%(%else-then(%if-no(%is_implements%,,%(%implements%)%)%,%(%if-no(%is_implements%,,%(%
%implement%
%)%)%)%)%)%,%
%Implements,%(%else-then(%if-no(%is_implements%,,%(%Implements%)%)%,%(%if-no(%is_implements%,,%(%implements%)%)%)%)%)%,%
%IMPLEMENTS,%(%else-then(%IMPLEMENTS%,%(%toupper(%Implements%)%)%)%)%,%
%implements,%(%else-then(%_implements%,%(%tolower(%Implements%)%)%)%)%,%
%is_extends,%(%else-then(%is_extends%,%(%is_Extends%)%)%)%,%
%extends,%(%else-then(%if-no(%is_extends%,,%(%extends%)%)%,%(%if-no(%is_extends%,,%(%
%extend%
%)%)%)%)%)%,%
%Extends,%(%else-then(%if-no(%is_extends%,,%(%Extends%)%)%,%(%if-no(%is_extends%,,%(%extends%)%)%)%)%)%,%
%EXTENDS,%(%else-then(%EXTENDS%,%(%toupper(%Extends%)%)%)%)%,%
%extends,%(%else-then(%_extends%,%(%tolower(%Extends%)%)%)%)%,%
%is_copy_constructot,%(%else-then(%is_copy_constructot%,%(%is_Copy_constructot%)%)%)%,%
%copy_constructot,%(%else-then(%if-no(%is_copy_constructot%,,%(%copy_constructot%)%)%,%(%if-no(%is_copy_constructot%,,%(%
%)%)%)%)%)%,%
%Copy_constructot,%(%else-then(%if-no(%is_copy_constructot%,,%(%Copy_constructot%)%)%,%(%if-no(%is_copy_constructot%,,%(%copy_constructot%)%)%)%)%)%,%
%COPY_CONSTRUCTOT,%(%else-then(%COPY_CONSTRUCTOT%,%(%toupper(%Copy_constructot%)%)%)%)%,%
%copy_constructot,%(%else-then(%_copy_constructot%,%(%tolower(%Copy_constructot%)%)%)%)%,%
%is_constructor,%(%else-then(%is_constructor%,%(%is_Constructor%)%)%)%,%
%constructor,%(%else-then(%if-no(%is_constructor%,,%(%constructor%)%)%,%(%if-no(%is_constructor%,,%(%
%)%)%)%)%)%,%
%Constructor,%(%else-then(%if-no(%is_constructor%,,%(%Constructor%)%)%,%(%if-no(%is_constructor%,,%(%constructor%)%)%)%)%)%,%
%CONSTRUCTOR,%(%else-then(%CONSTRUCTOR%,%(%toupper(%Constructor%)%)%)%)%,%
%constructor,%(%else-then(%_constructor%,%(%tolower(%Constructor%)%)%)%)%,%
%is_destructor,%(%else-then(%is_destructor%,%(%is_Destructor%)%)%)%,%
%destructor,%(%else-then(%if-no(%is_destructor%,,%(%destructor%)%)%,%(%if-no(%is_destructor%,,%(%
%)%)%)%)%)%,%
%Destructor,%(%else-then(%if-no(%is_destructor%,,%(%Destructor%)%)%,%(%if-no(%is_destructor%,,%(%destructor%)%)%)%)%)%,%
%DESTRUCTOR,%(%else-then(%DESTRUCTOR%,%(%toupper(%Destructor%)%)%)%)%,%
%destructor,%(%else-then(%_destructor%,%(%tolower(%Destructor%)%)%)%)%,%
%is_class_exported,%(%else-then(%is_class_exported%,%(%is_Class_exported%)%)%)%,%
%class_exported,%(%else-then(%if-no(%is_class_exported%,,%(%class_exported%)%)%,%(%if-no(%is_class_exported%,,%(%
%exported%
%)%)%)%)%)%,%
%Class_exported,%(%else-then(%if-no(%is_class_exported%,,%(%Class_exported%)%)%,%(%if-no(%is_class_exported%,,%(%class_exported%)%)%)%)%)%,%
%CLASS_EXPORTED,%(%else-then(%CLASS_EXPORTED%,%(%toupper(%Class_exported%)%)%)%)%,%
%class_exported,%(%else-then(%_class_exported%,%(%tolower(%Class_exported%)%)%)%)%,%
%is_template,%(%else-then(%is_template%,%(%is_Template%)%)%)%,%
%template,%(%else-then(%if-no(%is_template%,,%(%template%)%)%,%(%if-no(%is_template%,,%(%
%)%)%)%)%)%,%
%Template,%(%else-then(%if-no(%is_template%,,%(%Template%)%)%,%(%if-no(%is_template%,,%(%template%)%)%)%)%)%,%
%TEMPLATE,%(%else-then(%TEMPLATE%,%(%toupper(%Template%)%)%)%)%,%
%template,%(%else-then(%_template%,%(%tolower(%Template%)%)%)%)%,%
%is_templatet,%(%else-then(%is_templatet%,%(%is_TemplateT%)%)%)%,%
%templatet,%(%else-then(%if-no(%is_templatet%,,%(%templatet%)%)%,%(%if-no(%is_templatet%,,%(%
%)%)%)%)%)%,%
%TemplateT,%(%else-then(%if-no(%is_templatet%,,%(%TemplateT%)%)%,%(%if-no(%is_templatet%,,%(%templatet%)%)%)%)%)%,%
%TEMPLATET,%(%else-then(%TEMPLATET%,%(%toupper(%TemplateT%)%)%)%)%,%
%templatet,%(%else-then(%_templatet%,%(%tolower(%TemplateT%)%)%)%)%,%
%is_class_template,%(%else-then(%is_class_template%,%(%is_Class_template%)%)%)%,%
%class_template,%(%else-then(%if-no(%is_class_template%,,%(%class_template%)%)%,%(%if-no(%is_class_template%,,%(%
%%if-no(%is_Template%,,yes)%%
%)%)%)%)%)%,%
%Class_template,%(%else-then(%if-no(%is_class_template%,,%(%Class_template%)%)%,%(%if-no(%is_class_template%,,%(%class_template%)%)%)%)%)%,%
%CLASS_TEMPLATE,%(%else-then(%CLASS_TEMPLATE%,%(%toupper(%Class_template%)%)%)%)%,%
%class_template,%(%else-then(%_class_template%,%(%tolower(%Class_template%)%)%)%)%,%
%is_class_template_parameters,%(%else-then(%is_class_template_parameters%,%(%is_Class_template_parameters%)%)%)%,%
%class_template_parameters,%(%else-then(%if-no(%is_class_template_parameters%,,%(%class_template_parameters%)%)%,%(%if-no(%is_class_template_parameters%,,%(%
%%Template%%
%%if(%Extends%,%(%if(%Template%,%(, )%)%)%)%%
%%if(%Extends%,%(class TExtends = %Extends%)%)%%
%%if(%Implements%,%(%if(%Extends%%Template%,%(, )%)%)%)%%
%%if(%Implements%,%(class TImplements = %Implements%)%)%%
%)%)%)%)%)%,%
%Class_template_parameters,%(%else-then(%if-no(%is_class_template_parameters%,,%(%Class_template_parameters%)%)%,%(%if-no(%is_class_template_parameters%,,%(%class_template_parameters%)%)%)%)%)%,%
%CLASS_TEMPLATE_PARAMETERS,%(%else-then(%CLASS_TEMPLATE_PARAMETERS%,%(%toupper(%Class_template_parameters%)%)%)%)%,%
%class_template_parameters,%(%else-then(%_class_template_parameters%,%(%tolower(%Class_template_parameters%)%)%)%)%,%
%is_classt,%(%else-then(%is_classt%,%(%is_Classt%)%)%)%,%
%classt,%(%else-then(%if-no(%is_classt%,,%(%classt%)%)%,%(%if-no(%is_classt%,,%(%
%%Class%%if(%Class_template%,%(%TemplateT%)%)%%
%)%)%)%)%)%,%
%Classt,%(%else-then(%if-no(%is_classt%,,%(%Classt%)%)%,%(%if-no(%is_classt%,,%(%classt%)%)%)%)%)%,%
%CLASST,%(%else-then(%CLASST%,%(%toupper(%Classt%)%)%)%)%,%
%classt,%(%else-then(%_classt%,%(%tolower(%Classt%)%)%)%)%,%
%is_timplements,%(%else-then(%is_timplements%,%(%is_TImplements%)%)%)%,%
%timplements,%(%else-then(%if-no(%is_timplements%,,%(%timplements%)%)%,%(%if-no(%is_timplements%,,%(%
%%if-no(%is_Template%,%(%Implements%)%,%(TImplements)%)%%
%)%)%)%)%)%,%
%TImplements,%(%else-then(%if-no(%is_timplements%,,%(%TImplements%)%)%,%(%if-no(%is_timplements%,,%(%timplements%)%)%)%)%)%,%
%TIMPLEMENTS,%(%else-then(%TIMPLEMENTS%,%(%toupper(%TImplements%)%)%)%)%,%
%timplements,%(%else-then(%_timplements%,%(%tolower(%TImplements%)%)%)%)%,%
%is_textends,%(%else-then(%is_textends%,%(%is_TExtends%)%)%)%,%
%textends,%(%else-then(%if-no(%is_textends%,,%(%textends%)%)%,%(%if-no(%is_textends%,,%(%
%%if-no(%is_Template%,%(%Extends%)%,%(TExtends)%)%%
%)%)%)%)%)%,%
%TExtends,%(%else-then(%if-no(%is_textends%,,%(%TExtends%)%)%,%(%if-no(%is_textends%,,%(%textends%)%)%)%)%)%,%
%TEXTENDS,%(%else-then(%TEXTENDS%,%(%toupper(%TExtends%)%)%)%)%,%
%textends,%(%else-then(%_textends%,%(%tolower(%TExtends%)%)%)%)%,%
%is_implements_access,%(%else-then(%is_implements_access%,%(%is_Implements_access%)%)%)%,%
%implements_access,%(%else-then(%if-no(%is_implements_access%,,%(%implements_access%)%)%,%(%if-no(%is_implements_access%,,%(%
%public%
%)%)%)%)%)%,%
%Implements_access,%(%else-then(%if-no(%is_implements_access%,,%(%Implements_access%)%)%,%(%if-no(%is_implements_access%,,%(%implements_access%)%)%)%)%)%,%
%IMPLEMENTS_ACCESS,%(%else-then(%IMPLEMENTS_ACCESS%,%(%toupper(%Implements_access%)%)%)%)%,%
%implements_access,%(%else-then(%_implements_access%,%(%tolower(%Implements_access%)%)%)%)%,%
%is_extends_access,%(%else-then(%is_extends_access%,%(%is_Extends_access%)%)%)%,%
%extends_access,%(%else-then(%if-no(%is_extends_access%,,%(%extends_access%)%)%,%(%if-no(%is_extends_access%,,%(%
%public%
%)%)%)%)%)%,%
%Extends_access,%(%else-then(%if-no(%is_extends_access%,,%(%Extends_access%)%)%,%(%if-no(%is_extends_access%,,%(%extends_access%)%)%)%)%)%,%
%EXTENDS_ACCESS,%(%else-then(%EXTENDS_ACCESS%,%(%toupper(%Extends_access%)%)%)%)%,%
%extends_access,%(%else-then(%_extends_access%,%(%tolower(%Extends_access%)%)%)%)%,%
%is_iscopy_constructor,%(%else-then(%is_iscopy_constructor%,%(%is_IsCopy_constructor%)%)%)%,%
%iscopy_constructor,%(%else-then(%if-no(%is_iscopy_constructor%,,%(%iscopy_constructor%)%)%,%(%if-no(%is_iscopy_constructor%,,%(%
%%if-no(%is_Copy_constructor%,,yes)%%
%)%)%)%)%)%,%
%IsCopy_constructor,%(%else-then(%if-no(%is_iscopy_constructor%,,%(%IsCopy_constructor%)%)%,%(%if-no(%is_iscopy_constructor%,,%(%iscopy_constructor%)%)%)%)%)%,%
%ISCOPY_CONSTRUCTOR,%(%else-then(%ISCOPY_CONSTRUCTOR%,%(%toupper(%IsCopy_constructor%)%)%)%)%,%
%iscopy_constructor,%(%else-then(%_iscopy_constructor%,%(%tolower(%IsCopy_constructor%)%)%)%)%,%
%is_isconstructor,%(%else-then(%is_isconstructor%,%(%is_IsConstructor%)%)%)%,%
%isconstructor,%(%else-then(%if-no(%is_isconstructor%,,%(%isconstructor%)%)%,%(%if-no(%is_isconstructor%,,%(%
%%if-no(%is_Constructor%,,yes)%%
%)%)%)%)%)%,%
%IsConstructor,%(%else-then(%if-no(%is_isconstructor%,,%(%IsConstructor%)%)%,%(%if-no(%is_isconstructor%,,%(%isconstructor%)%)%)%)%)%,%
%ISCONSTRUCTOR,%(%else-then(%ISCONSTRUCTOR%,%(%toupper(%IsConstructor%)%)%)%)%,%
%isconstructor,%(%else-then(%_isconstructor%,%(%tolower(%IsConstructor%)%)%)%)%,%
%is_isdestructor,%(%else-then(%is_isdestructor%,%(%is_IsDestructor%)%)%)%,%
%isdestructor,%(%else-then(%if-no(%is_isdestructor%,,%(%isdestructor%)%)%,%(%if-no(%is_isdestructor%,,%(%
%%if-no(%is_Destructor%,,yes)%%
%)%)%)%)%)%,%
%IsDestructor,%(%else-then(%if-no(%is_isdestructor%,,%(%IsDestructor%)%)%,%(%if-no(%is_isdestructor%,,%(%isdestructor%)%)%)%)%)%,%
%ISDESTRUCTOR,%(%else-then(%ISDESTRUCTOR%,%(%toupper(%IsDestructor%)%)%)%)%,%
%isdestructor,%(%else-then(%_isdestructor%,%(%tolower(%IsDestructor%)%)%)%)%,%
%is_copy_constructor_type,%(%else-then(%is_copy_constructor_type%,%(%is_Copy_constructor_type%)%)%)%,%
%copy_constructor_type,%(%else-then(%if-no(%is_copy_constructor_type%,,%(%copy_constructor_type%)%)%,%(%if-no(%is_copy_constructor_type%,,%(%
%%if-then(%Copy_constructor%,%( )%)%%
%)%)%)%)%)%,%
%Copy_constructor_type,%(%else-then(%if-no(%is_copy_constructor_type%,,%(%Copy_constructor_type%)%)%,%(%if-no(%is_copy_constructor_type%,,%(%copy_constructor_type%)%)%)%)%)%,%
%COPY_CONSTRUCTOR_TYPE,%(%else-then(%COPY_CONSTRUCTOR_TYPE%,%(%toupper(%Copy_constructor_type%)%)%)%)%,%
%copy_constructor_type,%(%else-then(%_copy_constructor_type%,%(%tolower(%Copy_constructor_type%)%)%)%)%,%
%is_constructor_type,%(%else-then(%is_constructor_type%,%(%is_Constructor_type%)%)%)%,%
%constructor_type,%(%else-then(%if-no(%is_constructor_type%,,%(%constructor_type%)%)%,%(%if-no(%is_constructor_type%,,%(%
%%if-then(%Constructor%,%( )%)%%
%)%)%)%)%)%,%
%Constructor_type,%(%else-then(%if-no(%is_constructor_type%,,%(%Constructor_type%)%)%,%(%if-no(%is_constructor_type%,,%(%constructor_type%)%)%)%)%)%,%
%CONSTRUCTOR_TYPE,%(%else-then(%CONSTRUCTOR_TYPE%,%(%toupper(%Constructor_type%)%)%)%)%,%
%constructor_type,%(%else-then(%_constructor_type%,%(%tolower(%Constructor_type%)%)%)%)%,%
%is_destructor_type,%(%else-then(%is_destructor_type%,%(%is_Destructor_type%)%)%)%,%
%destructor_type,%(%else-then(%if-no(%is_destructor_type%,,%(%destructor_type%)%)%,%(%if-no(%is_destructor_type%,,%(%
%%if-then(%Destructor%,%( )%)%%
%)%)%)%)%)%,%
%Destructor_type,%(%else-then(%if-no(%is_destructor_type%,,%(%Destructor_type%)%)%,%(%if-no(%is_destructor_type%,,%(%destructor_type%)%)%)%)%)%,%
%DESTRUCTOR_TYPE,%(%else-then(%DESTRUCTOR_TYPE%,%(%toupper(%Destructor_type%)%)%)%)%,%
%destructor_type,%(%else-then(%_destructor_type%,%(%tolower(%Destructor_type%)%)%)%)%,%
%is_class_access,%(%else-then(%is_class_access%,%(%is_Class_access%)%)%)%,%
%class_access,%(%else-then(%if-no(%is_class_access%,,%(%class_access%)%)%,%(%if-no(%is_class_access%,,%(%
%public%
%)%)%)%)%)%,%
%Class_access,%(%else-then(%if-no(%is_class_access%,,%(%Class_access%)%)%,%(%if-no(%is_class_access%,,%(%class_access%)%)%)%)%)%,%
%CLASS_ACCESS,%(%else-then(%CLASS_ACCESS%,%(%toupper(%Class_access%)%)%)%)%,%
%class_access,%(%else-then(%_class_access%,%(%tolower(%Class_access%)%)%)%)%,%
%is_class_access_type,%(%else-then(%is_class_access_type%,%(%is_Class_access_type%)%)%)%,%
%class_access_type,%(%else-then(%if-no(%is_class_access_type%,,%(%class_access_type%)%)%,%(%if-no(%is_class_access_type%,,%(%
%%if-then(%Class_access%,%(:)%)%%
%)%)%)%)%)%,%
%Class_access_type,%(%else-then(%if-no(%is_class_access_type%,,%(%Class_access_type%)%)%,%(%if-no(%is_class_access_type%,,%(%class_access_type%)%)%)%)%)%,%
%CLASS_ACCESS_TYPE,%(%else-then(%CLASS_ACCESS_TYPE%,%(%toupper(%Class_access_type%)%)%)%)%,%
%class_access_type,%(%else-then(%_class_access_type%,%(%tolower(%Class_access_type%)%)%)%)%,%
%is_member_variable_access,%(%else-then(%is_member_variable_access%,%(%is_Member_variable_access%)%)%)%,%
%member_variable_access,%(%else-then(%if-no(%is_member_variable_access%,,%(%member_variable_access%)%)%,%(%if-no(%is_member_variable_access%,,%(%
%protected%
%)%)%)%)%)%,%
%Member_variable_access,%(%else-then(%if-no(%is_member_variable_access%,,%(%Member_variable_access%)%)%,%(%if-no(%is_member_variable_access%,,%(%member_variable_access%)%)%)%)%)%,%
%MEMBER_VARIABLE_ACCESS,%(%else-then(%MEMBER_VARIABLE_ACCESS%,%(%toupper(%Member_variable_access%)%)%)%)%,%
%member_variable_access,%(%else-then(%_member_variable_access%,%(%tolower(%Member_variable_access%)%)%)%)%,%
%is_member_variable_access_type,%(%else-then(%is_member_variable_access_type%,%(%is_Member_variable_access_type%)%)%)%,%
%member_variable_access_type,%(%else-then(%if-no(%is_member_variable_access_type%,,%(%member_variable_access_type%)%)%,%(%if-no(%is_member_variable_access_type%,,%(%
%%if-then(%Member_variable_access%,%(:)%)%%
%)%)%)%)%)%,%
%Member_variable_access_type,%(%else-then(%if-no(%is_member_variable_access_type%,,%(%Member_variable_access_type%)%)%,%(%if-no(%is_member_variable_access_type%,,%(%member_variable_access_type%)%)%)%)%)%,%
%MEMBER_VARIABLE_ACCESS_TYPE,%(%else-then(%MEMBER_VARIABLE_ACCESS_TYPE%,%(%toupper(%Member_variable_access_type%)%)%)%)%,%
%member_variable_access_type,%(%else-then(%_member_variable_access_type%,%(%tolower(%Member_variable_access_type%)%)%)%)%,%
%%(%
%%include(%Include_path%/class-body-%Body%.t)%%
%)%)%