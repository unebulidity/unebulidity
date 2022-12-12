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
%#   File: Framework-build-pri.t
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
%is_specific,%(%else-then(%is_specific%,%(%is_Specific%)%)%)%,%
%specific,%(%else-then(%if-no(%is_specific%,,%(%specific%)%)%,%(%if-no(%is_specific%,,%(%
%%else-then(%Build%,build)%%
%)%)%)%)%)%,%
%Specific,%(%else-then(%if-no(%is_specific%,,%(%Specific%)%)%,%(%if-no(%is_specific%,,%(%specific%)%)%)%)%)%,%
%SPECIFIC,%(%else-then(%SPECIFIC%,%(%toupper(%Specific%)%)%)%)%,%
%specific,%(%else-then(%_specific%,%(%tolower(%Specific%)%)%)%)%,%
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
%is_source,%(%else-then(%is_source%,%(%is_Source%)%)%)%,%
%source,%(%else-then(%if-no(%is_source%,,%(%source%)%)%,%(%if-no(%is_source%,,%(%
%%else-then(%include(%Include_path%/../t/Framework-source.t)%,source)%%
%)%)%)%)%)%,%
%Source,%(%else-then(%if-no(%is_source%,,%(%Source%)%)%,%(%if-no(%is_source%,,%(%source%)%)%)%)%)%,%
%SOURCE,%(%else-then(%SOURCE%,%(%toupper(%Source%)%)%)%)%,%
%source,%(%else-then(%_source%,%(%tolower(%Source%)%)%)%)%,%
%is_creds,%(%else-then(%is_creds%,%(%is_Creds%)%)%)%,%
%creds,%(%else-then(%if-no(%is_creds%,,%(%creds%)%)%,%(%if-no(%is_creds%,,%(%
%%else-then(%include(%Include_path%/../t/Framework-creds.t)%,creds)%%
%)%)%)%)%)%,%
%Creds,%(%else-then(%if-no(%is_creds%,,%(%Creds%)%)%,%(%if-no(%is_creds%,,%(%creds%)%)%)%)%)%,%
%CREDS,%(%else-then(%CREDS%,%(%toupper(%Creds%)%)%)%)%,%
%creds,%(%else-then(%_creds%,%(%tolower(%Creds%)%)%)%)%,%
%is_include,%(%else-then(%is_include%,%(%is_Include%)%)%)%,%
%include,%(%else-then(%if-no(%is_include%,,%(%include%)%)%,%(%if-no(%is_include%,,%(%
%%else-then(%include(%Include_path%/../t/Framework-include.t)%,include)%%
%)%)%)%)%)%,%
%Include,%(%else-then(%if-no(%is_include%,,%(%Include%)%)%,%(%if-no(%is_include%,,%(%include%)%)%)%)%)%,%
%INCLUDE,%(%else-then(%INCLUDE%,%(%toupper(%Include%)%)%)%)%,%
%include,%(%else-then(%_include%,%(%tolower(%Include%)%)%)%)%,%
%is_appdir,%(%else-then(%is_appdir%,%(%is_Appdir%)%)%)%,%
%appdir,%(%else-then(%if-no(%is_appdir%,,%(%appdir%)%)%,%(%if-no(%is_appdir%,,%(%
%%else-then(%include(%Include_path%/../t/Framework-appdir.t)%,app)%%
%)%)%)%)%)%,%
%Appdir,%(%else-then(%if-no(%is_appdir%,,%(%Appdir%)%)%,%(%if-no(%is_appdir%,,%(%appdir%)%)%)%)%)%,%
%APPDIR,%(%else-then(%APPDIR%,%(%toupper(%Appdir%)%)%)%)%,%
%appdir,%(%else-then(%_appdir%,%(%tolower(%Appdir%)%)%)%)%,%
%is_bindir,%(%else-then(%is_bindir%,%(%is_Bindir%)%)%)%,%
%bindir,%(%else-then(%if-no(%is_bindir%,,%(%bindir%)%)%,%(%if-no(%is_bindir%,,%(%
%%else-then(%include(%Include_path%/../t/Framework-bindir.t)%,bin)%%
%)%)%)%)%)%,%
%Bindir,%(%else-then(%if-no(%is_bindir%,,%(%Bindir%)%)%,%(%if-no(%is_bindir%,,%(%bindir%)%)%)%)%)%,%
%BINDIR,%(%else-then(%BINDIR%,%(%toupper(%Bindir%)%)%)%)%,%
%bindir,%(%else-then(%_bindir%,%(%tolower(%Bindir%)%)%)%)%,%
%is_libdir,%(%else-then(%is_libdir%,%(%is_Libdir%)%)%)%,%
%libdir,%(%else-then(%if-no(%is_libdir%,,%(%libdir%)%)%,%(%if-no(%is_libdir%,,%(%
%%else-then(%include(%Include_path%/../t/Framework-libdir.t)%,lib)%%
%)%)%)%)%)%,%
%Libdir,%(%else-then(%if-no(%is_libdir%,,%(%Libdir%)%)%,%(%if-no(%is_libdir%,,%(%libdir%)%)%)%)%)%,%
%LIBDIR,%(%else-then(%LIBDIR%,%(%toupper(%Libdir%)%)%)%)%,%
%libdir,%(%else-then(%_libdir%,%(%tolower(%Libdir%)%)%)%)%,%
%%(%
%%include(%Include_path%/Framework-pri-pro.t)%%
%
contains(BUILD_OS,Uname) {
UNAME = $$system(uname)

contains(UNAME,Darwin) {
BUILD_OS = macosx
} else {
contains(UNAME,Linux) {
BUILD_OS = linux
} else {
contains(UNAME,Windows) {
BUILD_OS = windows
} else {
BUILD_OS = os
} # contains(UNAME,Windows)
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)
} else {
contains(BUILD_OS,%FRAMEWORK%_OS) {
} else {
BUILD_OS = os
} # contains(BUILD_OS,%FRAMEWORK%_OS)
} # contains(BUILD_OS,Uname)

#BUILD_CPP_VERSION = 11

%parse(%Depends%,;,,,,%(%
%%with(%
%%(%
%########################################################################
# %Depend%
#
# pkg-config --cflags --libs %Depend%
#

# build %Depend% INCLUDEPATH
#
build_%Depend%_INCLUDEPATH += \

# build %Depend% DEFINES
#
build_%Depend%_DEFINES += \

# build %Depend% FRAMEWORKS
#
build_%Depend%_FRAMEWORKS += \

# build %Depend% LIBS
#
build_%Depend%_LIBS += \

)%)%)%,Depend)%%
%########################################################################
# %Framework%

# build %Framework% INCLUDEPATH
#
build_%Framework%_INCLUDEPATH += \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%%($${build_%Depends%_INCLUDEPATH} \
)%)%)%,Depends)%

# build %Framework% DEFINES
#
build_%Framework%_DEFINES += \
%parse(%Depends%,;,,,,%(%
%%with(%
%%($${build_%Depends%_DEFINES} \
)%)%)%,Depends)%

# build %Framework% FRAMEWORKS
#
build_%Framework%_FRAMEWORKS += \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%%($${build_%Depends%_FRAMEWORKS} \
)%)%)%,Depends)%

# build %Framework% LIBS
#
build_%Framework%_LIBS += \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%%($${build_%Depends%_LIBS} \
)%)%)%,Depends)%
########################################################################
%
%)%)%