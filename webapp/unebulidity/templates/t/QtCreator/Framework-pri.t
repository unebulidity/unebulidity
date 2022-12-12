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
%#   File: Framework-pri.t
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
%is_typeextension,%(%else-then(%is_typeextension%,%(%is_TypeExtension%)%)%)%,%
%typeextension,%(%else-then(%if-no(%is_typeextension%,,%(%typeextension%)%)%,%(%if-no(%is_typeextension%,,%(pri)%)%)%)%)%,%
%TypeExtension,%(%else-then(%if-no(%is_typeextension%,,%(%TypeExtension%)%)%,%(%if-no(%is_typeextension%,,%(%typeextension%)%)%)%)%)%,%
%TYPEEXTENSION,%(%else-then(%TYPEEXTENSION%,%(%toupper(%TypeExtension%)%)%)%)%,%
%typeextension,%(%else-then(%_typeextension%,%(%tolower(%TypeExtension%)%)%)%)%,%
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
%is_other_rpo,%(%else-then(%is_other_rpo%,%(%is_Other_rpo%)%)%)%,%
%other_rpo,%(%else-then(%if-no(%is_other_rpo%,,%(%other_rpo%)%)%,%(%if-no(%is_other_rpo%,,%(%
%%else-then(%include(%Include_path%/../t/Framework-other-rpo.t)%,../../../../../../../../..)%%
%)%)%)%)%)%,%
%Other_rpo,%(%else-then(%if-no(%is_other_rpo%,,%(%Other_rpo%)%)%,%(%if-no(%is_other_rpo%,,%(%other_rpo%)%)%)%)%)%,%
%OTHER_RPO,%(%else-then(%OTHER_RPO%,%(%toupper(%Other_rpo%)%)%)%)%,%
%other_rpo,%(%else-then(%_other_rpo%,%(%tolower(%Other_rpo%)%)%)%)%,%
%is_other_pkg,%(%else-then(%is_other_pkg%,%(%is_Other_pkg%)%)%)%,%
%other_pkg,%(%else-then(%if-no(%is_other_pkg%,,%(%other_pkg%)%)%,%(%if-no(%is_other_pkg%,,%(%
%%else-then(%include(%Include_path%/../t/Framework-other-pkg.t)%,../../../../../..)%%
%)%)%)%)%)%,%
%Other_pkg,%(%else-then(%if-no(%is_other_pkg%,,%(%Other_pkg%)%)%,%(%if-no(%is_other_pkg%,,%(%other_pkg%)%)%)%)%)%,%
%OTHER_PKG,%(%else-then(%OTHER_PKG%,%(%toupper(%Other_pkg%)%)%)%)%,%
%other_pkg,%(%else-then(%_other_pkg%,%(%tolower(%Other_pkg%)%)%)%)%,%
%is_other_prj,%(%else-then(%is_other_prj%,%(%is_Other_prj%)%)%)%,%
%other_prj,%(%else-then(%if-no(%is_other_prj%,,%(%other_prj%)%)%,%(%if-no(%is_other_prj%,,%(%
%%else-then(%include(%Include_path%/../t/Framework-other-prj.t)%,../../../../..)%%
%)%)%)%)%)%,%
%Other_prj,%(%else-then(%if-no(%is_other_prj%,,%(%Other_prj%)%)%,%(%if-no(%is_other_prj%,,%(%other_prj%)%)%)%)%)%,%
%OTHER_PRJ,%(%else-then(%OTHER_PRJ%,%(%toupper(%Other_prj%)%)%)%)%,%
%other_prj,%(%else-then(%_other_prj%,%(%tolower(%Other_prj%)%)%)%)%,%
%is_other_bld,%(%else-then(%is_other_bld%,%(%is_Other_bld%)%)%)%,%
%other_bld,%(%else-then(%if-no(%is_other_bld%,,%(%other_bld%)%)%,%(%if-no(%is_other_bld%,,%(%
%%else-then(%include(%Include_path%/../t/Framework-other-bld.t)%,..)%%
%)%)%)%)%)%,%
%Other_bld,%(%else-then(%if-no(%is_other_bld%,,%(%Other_bld%)%)%,%(%if-no(%is_other_bld%,,%(%other_bld%)%)%)%)%)%,%
%OTHER_BLD,%(%else-then(%OTHER_BLD%,%(%toupper(%Other_bld%)%)%)%)%,%
%other_bld,%(%else-then(%_other_bld%,%(%tolower(%Other_bld%)%)%)%)%,%
%%(%
%%include(%Include_path%/Framework-pri-pro.t)%%
%
OTHER_RPO = %Other_rpo%
OTHER_PKG = %Other_pkg%
OTHER_PRJ = %Other_prj%
OTHER_BLD = %Other_bld%

THIRDPARTY_NAME = thirdparty
THIRDPARTY_PKG = $${OTHER_PKG}/$${THIRDPARTY_NAME}
THIRDPARTY_PRJ = $${OTHER_PRJ}/$${THIRDPARTY_NAME}
THIRDPARTY_SRC = $${OTHER_PRJ}/%Source%/$${THIRDPARTY_NAME}

%parse(%Depends%,;,,,,%(%
%%with(%
%depends,%(%tolower(%Depends%)%)%,%
%DEPENDS,%(%toupper(%Depends%)%)%,%
%%(%
%########################################################################
# %Depends%
%DEPENDS%_VERSION_MAJOR = 0
%DEPENDS%_VERSION_MINOR = 0
%DEPENDS%_VERSION_RELEASE = 0
%DEPENDS%_VERSION = $${%DEPENDS%_VERSION_MAJOR}.$${%DEPENDS%_VERSION_MINOR}.$${%DEPENDS%_VERSION_RELEASE}
%DEPENDS%_NAME = %Depends%
%DEPENDS%_GROUP = $${%DEPENDS%_NAME}
%DEPENDS%_SOURCE = %Source%
%DEPENDS%_CREDS = %Creds%
%DEPENDS%_DIR = $${%DEPENDS%_GROUP}/$${%DEPENDS%_NAME}-$${%DEPENDS%_VERSION}
%DEPENDS%_PKG_DIR = $${%DEPENDS%_NAME}%then-if(%Language%,/)%%then-if(%Style%,/)%
%if(%Repository_depends%,%(%DEPENDS%_REPO_DEPENDS = %Repository_depends%
%DEPENDS%_REPO_DEPENDS_NAME = %Depends%
%DEPENDS%_REPO_DEPENDS_PKG_DIR = $${%DEPENDS%_REPO_DEPENDS}/$${%DEPENDS%_REPO_DEPENDS_NAME}%then-if(%Language%,/)%%then-if(%Style%,/)%
)%)%%DEPENDS%_BUILD_HOME = $${HOME}
%DEPENDS%_HOME_BUILD = $${%DEPENDS%_BUILD_HOME}/build/$${%DEPENDS%_NAME}
%DEPENDS%_HOME_BUILD_INCLUDE = $${%DEPENDS%_HOME_BUILD}/%Include%
%DEPENDS%_HOME_BUILD_LIB = $${%DEPENDS%_HOME_BUILD}/%Libdir%
%DEPENDS%_THIRDPARTY_PKG = $${THIRDPARTY_PKG}/$${%DEPENDS%_DIR}
%DEPENDS%_THIRDPARTY_PRJ = $${THIRDPARTY_PRJ}/$${%DEPENDS%_DIR}
%DEPENDS%_THIRDPARTY_SRC = $${THIRDPARTY_SRC}/$${%DEPENDS%_PKG_DIR}
%DEPENDS%_THIRDPARTY_SRC_GROUP = $${%DEPENDS%_GROUP}
%DEPENDS%_THIRDPARTY_SRC_NAME = $${%DEPENDS%_NAME}
%DEPENDS%_THIRDPARTY_SRC_DIR = $${THIRDPARTY_SRC}/$${%DEPENDS%_THIRDPARTY_SRC_GROUP}/$${%DEPENDS%_THIRDPARTY_SRC_NAME} 
%if(%Repository_depends%,%(%DEPENDS%_REPO_DEPENDS_PKG = $${OTHER_RPO}/$${%DEPENDS%_REPO_DEPENDS_PKG_DIR}
%DEPENDS%_REPO_DEPENDS_SRC = $${%DEPENDS%_REPO_DEPENDS_PKG}/$${%DEPENDS%_SOURCE}
%DEPENDS%_THIRDPARTY_SOURCE = $${%DEPENDS%_SOURCE}/thirdparty
%DEPENDS%_REPO_DEPENDS_THIRDPARTY_NAME = $${%DEPENDS%_REPO_DEPENDS_NAME}
%DEPENDS%_REPO_DEPENDS_PKG_THIRDPARTY_DIR = $${%DEPENDS%_REPO_DEPENDS}/$${%DEPENDS%_REPO_DEPENDS_THIRDPARTY_NAME}
%DEPENDS%_REPO_DEPENDS_THIRDPARTY_PKG = $${OTHER_RPO}/$${%DEPENDS%_REPO_DEPENDS_PKG_THIRDPARTY_DIR}
%DEPENDS%_REPO_DEPENDS_THIRDPARTY_SRC = $${%DEPENDS%_REPO_DEPENDS_THIRDPARTY_PKG}/$${%DEPENDS%_THIRDPARTY_SOURCE}/$${%DEPENDS%_THIRDPARTY_SRC_GROUP}/$${%DEPENDS%_THIRDPARTY_SRC_NAME}
)%)%%DEPENDS%_PKG = $${OTHER_PKG}/$${%DEPENDS%_PKG_DIR}
%DEPENDS%_PRJ = $${OTHER_PRJ}/$${%DEPENDS%_PKG_DIR}
#%DEPENDS%_SRC = $${%DEPENDS%_THIRDPARTY_SRC_DIR}
#%DEPENDS%_SRC = $${%DEPENDS%_THIRDPARTY_PKG}/$${%DEPENDS%_SOURCE}
#%DEPENDS%_SRC = $${%DEPENDS%_THIRDPARTY_PRJ}/$${%DEPENDS%_SOURCE}
%DEPENDS%_SRC = $${%DEPENDS%_PKG}/$${%DEPENDS%_SOURCE}
#%DEPENDS%_SRC = $${%DEPENDS%_PRJ}/$${%DEPENDS%_SOURCE}
%DEPENDS%_CRD_SRC = $${%DEPENDS%_PKG}/$${%DEPENDS%_CREDS}/$${%DEPENDS%_SOURCE}

# %Depends% INCLUDEPATH
#
%Depends%_INCLUDEPATH += \
$${%DEPENDS%_SRC} \
$${%DEPENDS%_CRD_SRC} \%
%%if(%Repository_depends%,%(
$${%DEPENDS%_REPO_DEPENDS_SRC} \
$${%DEPENDS%_REPO_DEPENDS_THIRDPARTY_SRC} \)%)%

# %Depends% DEFINES
#
%Depends%_DEFINES += \

)%)%%
%)%,Depends)%
########################################################################
# %Framework%
%FRAMEWORK%_NAME = %Framework%
%FRAMEWORK%_SOURCE = %Source%
%FRAMEWORK%_CREDS = %Creds%

%FRAMEWORK%_PKG = ../../../../..
%FRAMEWORK%_BLD = ../..

%FRAMEWORK%_PRJ = $${%FRAMEWORK%_PKG}
%FRAMEWORK%_BIN = $${%FRAMEWORK%_BLD}/%Bindir%
%FRAMEWORK%_LIB = $${%FRAMEWORK%_BLD}/%Libdir%
%FRAMEWORK%_SRC = $${%FRAMEWORK%_PKG}/$${%FRAMEWORK%_SOURCE}
%FRAMEWORK%_CRD_SRC = $${%FRAMEWORK%_PKG}/$${%FRAMEWORK%_CREDS}/$${%FRAMEWORK%_SOURCE}

%if(%Repository_depends%,%(%FRAMEWORK%_DEPENDS_REPO = %Repository_depends%
%FRAMEWORK%_REPO_DEPENDS_NAME = %Framework%
%FRAMEWORK%_REPO_DEPENDS_SOURCE = %Source%
%FRAMEWORK%_REPO_DEPENDS_PKG = $${OTHER_RPO}/$${%FRAMEWORK%_DEPENDS_REPO}/$${%FRAMEWORK%_REPO_DEPENDS_NAME}
%FRAMEWORK%_REPO_DEPENDS_SRC = $${%FRAMEWORK%_REPO_DEPENDS_PKG}/$${%FRAMEWORK%_SOURCE}

)%)%%
%# %Framework% BUILD_CONFIG
#
CONFIG(debug, debug|release) {
BUILD_CONFIG = Debug
%Framework%_DEFINES += DEBUG_BUILD
} else {
BUILD_CONFIG = Release
%Framework%_DEFINES += RELEASE_BUILD
}

# %Framework% INCLUDEPATH
#
%Framework%_INCLUDEPATH += \
$${%FRAMEWORK%_SRC} \
$${%FRAMEWORK%_CRD_SRC} \
%if(%Repository_depends%,%($${%FRAMEWORK%_REPO_DEPENDS_SRC} \
)%)%%
%%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%($${%Depends%_INCLUDEPATH} \
)%)%%
%)%,Depends)%%
%$${build_%Framework%_INCLUDEPATH} \

# %Framework% DEFINES
#
%Framework%_DEFINES += \
%parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%($${%Depends%_DEFINES} \
)%)%%
%)%,Depends)%%
%$${build_%Framework%_DEFINES} \

# %Framework% LIBS
#
%Framework%_LIBS += \
-L$${%FRAMEWORK%_LIB}/lib$${%FRAMEWORK%_NAME} \
-l$${%FRAMEWORK%_NAME} \

%
%)%)%