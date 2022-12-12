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
%#   File: Framework-target-pri.t
%#
%# Author: $author$
%#   Date: 12/10/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_repository,%(%else-then(%is_repository%,%(%is_Repository%)%)%)%,%
%repository,%(%else-then(%if-no(%is_repository%,,%(%repository%)%)%,%(%if-no(%is_repository%,,%(%
%%else-then(%include(%Include_path%/../t/Repository.t)%,repository)%%
%)%)%)%)%)%,%
%Repository,%(%else-then(%if-no(%is_repository%,,%(%Repository%)%)%,%(%if-no(%is_repository%,,%(%repository%)%)%)%)%)%,%
%REPOSITORY,%(%else-then(%REPOSITORY%,%(%toupper(%Repository%)%)%)%)%,%
%repository,%(%else-then(%_repository%,%(%tolower(%Repository%)%)%)%)%,%
%is_repository_depends,%(%else-then(%is_repository_depends%,%(%is_Repository_depends%)%)%)%,%
%repository_depends,%(%else-then(%if-no(%is_repository_depends%,,%(%repository_depends%)%)%,%(%if-no(%is_repository_depends%,,%(%
%%else-then(%include(%Include_path%/../t/Repository-depends.t)%,repository)%%
%)%)%)%)%)%,%
%Repository_depends,%(%else-then(%if-no(%is_repository_depends%,,%(%Repository_depends%)%)%,%(%if-no(%is_repository_depends%,,%(%repository_depends%)%)%)%)%)%,%
%REPOSITORY_DEPENDS,%(%else-then(%REPOSITORY_DEPENDS%,%(%toupper(%Repository_depends%)%)%)%)%,%
%repository_depends,%(%else-then(%_repository_depends%,%(%tolower(%Repository_depends%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(%
%%else-then(%include(%Include_path%/../t/Framework.t)%,framework)%%
%)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_framework_depends,%(%else-then(%is_framework_depends%,%(%is_Framework_depends%)%)%)%,%
%framework_depends,%(%else-then(%if-no(%is_framework_depends%,,%(%framework_depends%)%)%,%(%if-no(%is_framework_depends%,,%(%
%%else-then(%include(%Include_path%/../t/Framework-depends.t)%,depends)%%
%)%)%)%)%)%,%
%Framework_depends,%(%else-then(%if-no(%is_framework_depends%,,%(%Framework_depends%)%)%,%(%if-no(%is_framework_depends%,,%(%framework_depends%)%)%)%)%)%,%
%FRAMEWORK_DEPENDS,%(%else-then(%FRAMEWORK_DEPENDS%,%(%toupper(%Framework_depends%)%)%)%)%,%
%framework_depends,%(%else-then(%_framework_depends%,%(%tolower(%Framework_depends%)%)%)%)%,%
%is_depends,%(%else-then(%is_depends%,%(%is_Depends%)%)%)%,%
%depends,%(%else-then(%if-no(%is_depends%,,%(%depends%)%)%,%(%if-no(%is_depends%,,%(%
%%Framework_depends%%
%)%)%)%)%)%,%
%Depends,%(%else-then(%if-no(%is_depends%,,%(%Depends%)%)%,%(%if-no(%is_depends%,,%(%depends%)%)%)%)%)%,%
%DEPENDS,%(%else-then(%DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(%_depends%,%(%tolower(%Depends%)%)%)%)%,%
%is_no_repository_depends,%(%else-then(%is_no_repository_depends%,%(%is_no_Repository_depends%)%)%)%,%
%no_repository_depends,%(%else-then(%if-no(%is_no_repository_depends%,,%(%no_repository_depends%)%)%,%(%if-no(%is_no_repository_depends%,,%(%%)%)%)%)%)%,%
%no_Repository_depends,%(%else-then(%if-no(%is_no_repository_depends%,,%(%no_Repository_depends%)%)%,%(%if-no(%is_no_repository_depends%,,%(%no_repository_depends%)%)%)%)%)%,%
%NO_REPOSITORY_DEPENDS,%(%else-then(%NO_REPOSITORY_DEPENDS%,%(%toupper(%no_Repository_depends%)%)%)%)%,%
%no_repository_depends,%(%else-then(%_no_repository_depends%,%(%tolower(%no_Repository_depends%)%)%)%)%,%
%is_no_depends,%(%else-then(%is_no_depends%,%(%is_no_Depends%)%)%)%,%
%no_depends,%(%else-then(%if-no(%is_no_depends%,,%(%no_depends%)%)%,%(%if-no(%is_no_depends%,,%(%
%yes%
%)%)%)%)%)%,%
%no_Depends,%(%else-then(%if-no(%is_no_depends%,,%(%no_Depends%)%)%,%(%if-no(%is_no_depends%,,%(%no_depends%)%)%)%)%)%,%
%NO_DEPENDS,%(%else-then(%NO_DEPENDS%,%(%toupper(%no_Depends%)%)%)%)%,%
%no_depends,%(%else-then(%_no_depends%,%(%tolower(%no_Depends%)%)%)%)%,%
%is_target,%(%else-then(%is_target%,%(%is_Target%)%)%)%,%
%target,%(%else-then(%if-no(%is_target%,,%(%target%)%)%,%(%if-no(%is_target%,,%(%
%%Framework%%
%)%)%)%)%)%,%
%Target,%(%else-then(%if-no(%is_target%,,%(%Target%)%)%,%(%if-no(%is_target%,,%(%target%)%)%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_target%,%(%tolower(%Target%)%)%)%)%,%
%is_lib,%(%else-then(%is_lib%,%(%is_Lib%)%)%)%,%
%lib,%(%else-then(%if-no(%is_lib%,,%(%lib%)%)%,%(%if-no(%is_lib%,,%(%
%%equal(Lib,%Out%)%%
%)%)%)%)%)%,%
%Lib,%(%else-then(%if-no(%is_lib%,,%(%Lib%)%)%,%(%if-no(%is_lib%,,%(%lib%)%)%)%)%)%,%
%LIB,%(%else-then(%LIB%,%(%toupper(%Lib%)%)%)%)%,%
%lib,%(%else-then(%_lib%,%(%tolower(%Lib%)%)%)%)%,%
%is_slib,%(%else-then(%is_slib%,%(%is_SLib%)%)%)%,%
%slib,%(%else-then(%if-no(%is_slib%,,%(%slib%)%)%,%(%if-no(%is_slib%,,%(%
%%equal(SLib,%Out%)%%
%)%)%)%)%)%,%
%SLib,%(%else-then(%if-no(%is_slib%,,%(%SLib%)%)%,%(%if-no(%is_slib%,,%(%slib%)%)%)%)%)%,%
%SLIB,%(%else-then(%SLIB%,%(%toupper(%SLib%)%)%)%)%,%
%slib,%(%else-then(%_slib%,%(%tolower(%SLib%)%)%)%)%,%
%is_exe,%(%else-then(%is_exe%,%(%is_Exe%)%)%)%,%
%exe,%(%else-then(%if-no(%is_exe%,,%(%exe%)%)%,%(%if-no(%is_exe%,,%(%
%%else(%lib%%slib%,%(%if(%HasExe%%equal(%Target%,%Framework%)%,_exe)%)%)%%
%)%)%)%)%)%,%
%Exe,%(%else-then(%if-no(%is_exe%,,%(%Exe%)%)%,%(%if-no(%is_exe%,,%(%exe%)%)%)%)%)%,%
%EXE,%(%else-then(%EXE%,%(%toupper(%Exe%)%)%)%)%,%
%exe,%(%else-then(%_exe%,%(%tolower(%Exe%)%)%)%)%,%
%is_output,%(%else-then(%is_output%,%(%is_Output%)%)%)%,%
%output,%(%else-then(%if-no(%is_output%,,%(%output%)%)%,%(%if-no(%is_output%,,%(%
%%if(%Lib%%SLib%,%(%if(%SLib%,%(shared )%,%(static )%)%library)%,%(executable)%)%%
%)%)%)%)%)%,%
%Output,%(%else-then(%if-no(%is_output%,,%(%Output%)%)%,%(%if-no(%is_output%,,%(%output%)%)%)%)%)%,%
%OUTPUT,%(%else-then(%OUTPUT%,%(%toupper(%Output%)%)%)%)%,%
%output,%(%else-then(%_output%,%(%tolower(%Output%)%)%)%)%,%
%is_source_framework,%(%else-then(%is_source_framework%,%(%is_Source_framework%)%)%)%,%
%source_framework,%(%else-then(%if-no(%is_source_framework%,,%(%source_framework%)%)%,%(%if-no(%is_source_framework%,,%(%
%%else-then(%Xos%,%(xos)%)%%
%)%)%)%)%)%,%
%Source_framework,%(%else-then(%if-no(%is_source_framework%,,%(%Source_framework%)%)%,%(%if-no(%is_source_framework%,,%(%source_framework%)%)%)%)%)%,%
%SOURCE_FRAMEWORK,%(%else-then(%SOURCE_FRAMEWORK%,%(%toupper(%Source_framework%)%)%)%)%,%
%source_framework,%(%else-then(%_source_framework%,%(%tolower(%Source_framework%)%)%)%)%,%
%is_target_path,%(%else-then(%is_target_path%,%(%is_Target_path%)%)%)%,%
%target_path,%(%else-then(%if-no(%is_target_path%,,%(%target_path%)%)%,%(%if-no(%is_target_path%,,%(%
%%if(%Lib%%SLib%,%(lib)%,%(app/console)%)%%
%)%)%)%)%)%,%
%Target_path,%(%else-then(%if-no(%is_target_path%,,%(%Target_path%)%)%,%(%if-no(%is_target_path%,,%(%target_path%)%)%)%)%)%,%
%TARGET_PATH,%(%else-then(%TARGET_PATH%,%(%toupper(%Target_path%)%)%)%)%,%
%target_path,%(%else-then(%_target_path%,%(%tolower(%Target_path%)%)%)%)%,%
%is_target_namespace,%(%else-then(%is_target_namespace%,%(%is_Target_namespace%)%)%)%,%
%target_namespace,%(%else-then(%if-no(%is_target_namespace%,,%(%target_namespace%)%)%,%(%if-no(%is_target_namespace%,,%(%
%%else-then(%Source_framework%,%(%else-then(%Framework%,%(xos)%)%)%)%/%Target_path%/%Target%%
%)%)%)%)%)%,%
%Target_namespace,%(%else-then(%if-no(%is_target_namespace%,,%(%Target_namespace%)%)%,%(%if-no(%is_target_namespace%,,%(%target_namespace%)%)%)%)%)%,%
%TARGET_NAMESPACE,%(%else-then(%TARGET_NAMESPACE%,%(%toupper(%Target_namespace%)%)%)%)%,%
%target_namespace,%(%else-then(%_target_namespace%,%(%tolower(%Target_namespace%)%)%)%)%,%
%is_target_class,%(%else-then(%is_target_class%,%(%is_Target_class%)%)%)%,%
%target_class,%(%else-then(%if-no(%is_target_class%,,%(%target_class%)%)%,%(%if-no(%is_target_class%,,%(%
%%if(%Lib%%SLib%,%(version)%,%(main)%)%%
%)%)%)%)%)%,%
%Target_class,%(%else-then(%if-no(%is_target_class%,,%(%Target_class%)%)%,%(%if-no(%is_target_class%,,%(%target_class%)%)%)%)%)%,%
%TARGET_CLASS,%(%else-then(%TARGET_CLASS%,%(%toupper(%Target_class%)%)%)%)%,%
%target_class,%(%else-then(%_target_class%,%(%tolower(%Target_class%)%)%)%)%,%
%is_target_base,%(%else-then(%is_target_base%,%(%is_Target_base%)%)%)%,%
%target_base,%(%else-then(%if-no(%is_target_base%,,%(%target_base%)%)%,%(%if-no(%is_target_base%,,%(%
%%Target_namespace%/%Target_class%%
%)%)%)%)%)%,%
%Target_base,%(%else-then(%if-no(%is_target_base%,,%(%Target_base%)%)%,%(%if-no(%is_target_base%,,%(%target_base%)%)%)%)%)%,%
%TARGET_BASE,%(%else-then(%TARGET_BASE%,%(%toupper(%Target_base%)%)%)%)%,%
%target_base,%(%else-then(%_target_base%,%(%tolower(%Target_base%)%)%)%)%,%
%is_libtarget,%(%else-then(%is_libtarget%,%(%is_LibTarget%)%)%)%,%
%libtarget,%(%else-then(%if-no(%is_libtarget%,,%(%libtarget%)%)%,%(%if-no(%is_libtarget%,,%(%
%%if(%lib%%slib%,lib)%%Target%%
%)%)%)%)%)%,%
%LibTarget,%(%else-then(%if-no(%is_libtarget%,,%(%LibTarget%)%)%,%(%if-no(%is_libtarget%,,%(%libtarget%)%)%)%)%)%,%
%LIBTARGET,%(%else-then(%LIBTARGET%,%(%toupper(%LibTarget%)%)%)%)%,%
%libtarget,%(%else-then(%_libtarget%,%(%tolower(%LibTarget%)%)%)%)%,%
%is_logging_levels,%(%else-then(%is_logging_levels%,%(%is_Logging_levels%)%)%)%,%
%logging_levels,%(%else-then(%if-no(%is_logging_levels%,,%(%logging_levels%)%)%,%(%if-no(%is_logging_levels%,,%(%
%ERROR%
%)%)%)%)%)%,%
%Logging_levels,%(%else-then(%if-no(%is_logging_levels%,,%(%Logging_levels%)%)%,%(%if-no(%is_logging_levels%,,%(%logging_levels%)%)%)%)%)%,%
%LOGGING_LEVELS,%(%else-then(%LOGGING_LEVELS%,%(%toupper(%Logging_levels%)%)%)%)%,%
%logging_levels,%(%else-then(%_logging_levels%,%(%tolower(%Logging_levels%)%)%)%)%,%
%is_objective_cpp_source,%(%else-then(%is_objective_cpp_source%,%(%is_Objective_cpp_source%)%)%)%,%
%objective_cpp_source,%(%else-then(%if-no(%is_objective_cpp_source%,,%(%objective_cpp_source%)%)%,%(%if-no(%is_objective_cpp_source%,,%(%
%)%)%)%)%)%,%
%Objective_cpp_source,%(%else-then(%if-no(%is_objective_cpp_source%,,%(%Objective_cpp_source%)%)%,%(%if-no(%is_objective_cpp_source%,,%(%objective_cpp_source%)%)%)%)%)%,%
%OBJECTIVE_CPP_SOURCE,%(%else-then(%OBJECTIVE_CPP_SOURCE%,%(%toupper(%Objective_cpp_source%)%)%)%)%,%
%objective_cpp_source,%(%else-then(%_objective_cpp_source%,%(%tolower(%Objective_cpp_source%)%)%)%)%,%
%is_objective_c_source,%(%else-then(%is_objective_c_source%,%(%is_Objective_c_source%)%)%)%,%
%objective_c_source,%(%else-then(%if-no(%is_objective_c_source%,,%(%objective_c_source%)%)%,%(%if-no(%is_objective_c_source%,,%(%
%)%)%)%)%)%,%
%Objective_c_source,%(%else-then(%if-no(%is_objective_c_source%,,%(%Objective_c_source%)%)%,%(%if-no(%is_objective_c_source%,,%(%objective_c_source%)%)%)%)%)%,%
%OBJECTIVE_C_SOURCE,%(%else-then(%OBJECTIVE_C_SOURCE%,%(%toupper(%Objective_c_source%)%)%)%)%,%
%objective_c_source,%(%else-then(%_objective_c_source%,%(%tolower(%Objective_c_source%)%)%)%)%,%
%is_cpp_source,%(%else-then(%is_cpp_source%,%(%is_Cpp_source%)%)%)%,%
%cpp_source,%(%else-then(%if-no(%is_cpp_source%,,%(%cpp_source%)%)%,%(%if-no(%is_cpp_source%,,%(%
%)%)%)%)%)%,%
%Cpp_source,%(%else-then(%if-no(%is_cpp_source%,,%(%Cpp_source%)%)%,%(%if-no(%is_cpp_source%,,%(%cpp_source%)%)%)%)%)%,%
%CPP_SOURCE,%(%else-then(%CPP_SOURCE%,%(%toupper(%Cpp_source%)%)%)%)%,%
%cpp_source,%(%else-then(%_cpp_source%,%(%tolower(%Cpp_source%)%)%)%)%,%
%is_cc_source,%(%else-then(%is_cc_source%,%(%is_Cc_source%)%)%)%,%
%cc_source,%(%else-then(%if-no(%is_cc_source%,,%(%cc_source%)%)%,%(%if-no(%is_cc_source%,,%(%
%)%)%)%)%)%,%
%Cc_source,%(%else-then(%if-no(%is_cc_source%,,%(%Cc_source%)%)%,%(%if-no(%is_cc_source%,,%(%cc_source%)%)%)%)%)%,%
%CC_SOURCE,%(%else-then(%CC_SOURCE%,%(%toupper(%Cc_source%)%)%)%)%,%
%cc_source,%(%else-then(%_cc_source%,%(%tolower(%Cc_source%)%)%)%)%,%
%is_c_source,%(%else-then(%is_c_source%,%(%is_C_source%)%)%)%,%
%c_source,%(%else-then(%if-no(%is_c_source%,,%(%c_source%)%)%,%(%if-no(%is_c_source%,,%(%
%)%)%)%)%)%,%
%C_source,%(%else-then(%if-no(%is_c_source%,,%(%C_source%)%)%,%(%if-no(%is_c_source%,,%(%c_source%)%)%)%)%)%,%
%C_SOURCE,%(%else-then(%C_SOURCE%,%(%toupper(%C_source%)%)%)%)%,%
%c_source,%(%else-then(%_c_source%,%(%tolower(%C_source%)%)%)%)%,%
%is_target_objective_header_extension,%(%else-then(%is_target_objective_header_extension%,%(%is_Target_objective_header_extension%)%)%)%,%
%target_objective_header_extension,%(%else-then(%if-no(%is_target_objective_header_extension%,,%(%target_objective_header_extension%)%)%,%(%if-no(%is_target_objective_header_extension%,,%(%
%hh%
%)%)%)%)%)%,%
%Target_objective_header_extension,%(%else-then(%if-no(%is_target_objective_header_extension%,,%(%Target_objective_header_extension%)%)%,%(%if-no(%is_target_objective_header_extension%,,%(%target_objective_header_extension%)%)%)%)%)%,%
%TARGET_OBJECTIVE_HEADER_EXTENSION,%(%else-then(%TARGET_OBJECTIVE_HEADER_EXTENSION%,%(%toupper(%Target_objective_header_extension%)%)%)%)%,%
%target_objective_header_extension,%(%else-then(%_target_objective_header_extension%,%(%tolower(%Target_objective_header_extension%)%)%)%)%,%
%is_target_objective_source_extension,%(%else-then(%is_target_objective_source_extension%,%(%is_Target_objective_source_extension%)%)%)%,%
%target_objective_source_extension,%(%else-then(%if-no(%is_target_objective_source_extension%,,%(%target_objective_source_extension%)%)%,%(%if-no(%is_target_objective_source_extension%,,%(%
%mm%
%)%)%)%)%)%,%
%Target_objective_source_extension,%(%else-then(%if-no(%is_target_objective_source_extension%,,%(%Target_objective_source_extension%)%)%,%(%if-no(%is_target_objective_source_extension%,,%(%target_objective_source_extension%)%)%)%)%)%,%
%TARGET_OBJECTIVE_SOURCE_EXTENSION,%(%else-then(%TARGET_OBJECTIVE_SOURCE_EXTENSION%,%(%toupper(%Target_objective_source_extension%)%)%)%)%,%
%target_objective_source_extension,%(%else-then(%_target_objective_source_extension%,%(%tolower(%Target_objective_source_extension%)%)%)%)%,%
%is_target_header_extension,%(%else-then(%is_target_header_extension%,%(%is_Target_header_extension%)%)%)%,%
%target_header_extension,%(%else-then(%if-no(%is_target_header_extension%,,%(%target_header_extension%)%)%,%(%if-no(%is_target_header_extension%,,%(%
%hpp%
%)%)%)%)%)%,%
%Target_header_extension,%(%else-then(%if-no(%is_target_header_extension%,,%(%Target_header_extension%)%)%,%(%if-no(%is_target_header_extension%,,%(%target_header_extension%)%)%)%)%)%,%
%TARGET_HEADER_EXTENSION,%(%else-then(%TARGET_HEADER_EXTENSION%,%(%toupper(%Target_header_extension%)%)%)%)%,%
%target_header_extension,%(%else-then(%_target_header_extension%,%(%tolower(%Target_header_extension%)%)%)%)%,%
%is_target_source_extension,%(%else-then(%is_target_source_extension%,%(%is_Target_source_extension%)%)%)%,%
%target_source_extension,%(%else-then(%if-no(%is_target_source_extension%,,%(%target_source_extension%)%)%,%(%if-no(%is_target_source_extension%,,%(%
%cpp%
%)%)%)%)%)%,%
%Target_source_extension,%(%else-then(%if-no(%is_target_source_extension%,,%(%Target_source_extension%)%)%,%(%if-no(%is_target_source_extension%,,%(%target_source_extension%)%)%)%)%)%,%
%TARGET_SOURCE_EXTENSION,%(%else-then(%TARGET_SOURCE_EXTENSION%,%(%toupper(%Target_source_extension%)%)%)%)%,%
%target_source_extension,%(%else-then(%_target_source_extension%,%(%tolower(%Target_source_extension%)%)%)%)%,%
%%(%
%%include(%Include_path%/Framework-pri-pro.t)%%
%
########################################################################
# %LibTarget%
%if(%equal(%Out%,Lib)%,%(#XOS_LIB_%TARGET%_VERSION_BUILD_DATE = %Date% #$$system%(()%~/bin/utility/tdate%())%
)%)%
# %LibTarget%%exe% TARGET
#
%LibTarget%%exe%_TARGET = %Target%%
%%if(%Lib%%SLib%,%(
%LibTarget%%exe%_TEMPLATE = lib%if(%Lib%,%(
%LibTarget%%exe%_CONFIG += staticlib)%)%)%)%

# %LibTarget%%exe% INCLUDEPATH
#
%LibTarget%%exe%_INCLUDEPATH += \
$${%Framework%_INCLUDEPATH} \

# %LibTarget%%exe% DEFINES
#
%LibTarget%%exe%_DEFINES += \
$${%Framework%_DEFINES} \
DEFAULT_LOGGING_LEVELS_%LOGGING_LEVELS% \

%if(%equal(%Out%,Lib)%,%(#XOS_LIB_%TARGET%_VERSION_BUILD_DATE=$${XOS_LIB_%TARGET%_VERSION_BUILD_DATE} \
)%,%(%if(%equal(%Target_class%,main)%,%(#XOS_CONSOLE_MAIN_MAIN \
)%,%(#%TARGET_INSTANCE%_%TARGET_CLASS%_INSTANCE \
)%)%)%)%
########################################################################
# %LibTarget%%exe% OBJECTIVE_HEADERS
#
#%LibTarget%%exe%_OBJECTIVE_HEADERS += \
#$${%FRAMEWORK%_SRC}/%Target_base%.%Target_objective_header_extension% \

# %LibTarget%%exe% OBJECTIVE_SOURCES
#
#%LibTarget%%exe%_OBJECTIVE_SOURCES += \
#$${%FRAMEWORK%_SRC}/%Target_base%.%Target_objective_source_extension% \

########################################################################
# %LibTarget%%exe% HEADERS
#
#%LibTarget%%exe%_HEADERS += \
#$${%FRAMEWORK%_SRC}/%Target_base%.%Target_header_extension% \

# %LibTarget%%exe% SOURCES
#
#%LibTarget%%exe%_SOURCES += \
#$${%FRAMEWORK%_SRC}/%Target_base%.%Target_source_extension% \

########################################################################
%else(%lib%,%(# %LibTarget%%exe% FRAMEWORKS
#
%LibTarget%%exe%_FRAMEWORKS += \
$${%Framework%_FRAMEWORKS} \

# %LibTarget%%exe% LIBS
#
%LibTarget%%exe%_LIBS += \
$${%Framework%_LIBS} \

########################################################################
# NO Qt
%if(%no_no_Qt%,%(#)%)%QT -= gui core
)%)%
%
%)%)%