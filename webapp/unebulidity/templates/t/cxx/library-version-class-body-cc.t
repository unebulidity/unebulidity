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
%#   File: library-version-class-body-cc.t
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
%is_version_major,%(%else-then(%is_version_major%,%(%is_Version_major%)%)%)%,%
%version_major,%(%else-then(%if-no(%is_version_major%,,%(%version_major%)%)%,%(%if-no(%is_version_major%,,%(%
%0%
%)%)%)%)%)%,%
%Version_major,%(%else-then(%if-no(%is_version_major%,,%(%Version_major%)%)%,%(%if-no(%is_version_major%,,%(%version_major%)%)%)%)%)%,%
%VERSION_MAJOR,%(%else-then(%VERSION_MAJOR%,%(%toupper(%Version_major%)%)%)%)%,%
%version_major,%(%else-then(%_version_major%,%(%tolower(%Version_major%)%)%)%)%,%
%is_version_minor,%(%else-then(%is_version_minor%,%(%is_Version_minor%)%)%)%,%
%version_minor,%(%else-then(%if-no(%is_version_minor%,,%(%version_minor%)%)%,%(%if-no(%is_version_minor%,,%(%
%0%
%)%)%)%)%)%,%
%Version_minor,%(%else-then(%if-no(%is_version_minor%,,%(%Version_minor%)%)%,%(%if-no(%is_version_minor%,,%(%version_minor%)%)%)%)%)%,%
%VERSION_MINOR,%(%else-then(%VERSION_MINOR%,%(%toupper(%Version_minor%)%)%)%)%,%
%version_minor,%(%else-then(%_version_minor%,%(%tolower(%Version_minor%)%)%)%)%,%
%is_version_release,%(%else-then(%is_version_release%,%(%is_Version_release%)%)%)%,%
%version_release,%(%else-then(%if-no(%is_version_release%,,%(%version_release%)%)%,%(%if-no(%is_version_release%,,%(%
%0%
%)%)%)%)%)%,%
%Version_release,%(%else-then(%if-no(%is_version_release%,,%(%Version_release%)%)%,%(%if-no(%is_version_release%,,%(%version_release%)%)%)%)%)%,%
%VERSION_RELEASE,%(%else-then(%VERSION_RELEASE%,%(%toupper(%Version_release%)%)%)%)%,%
%version_release,%(%else-then(%_version_release%,%(%tolower(%Version_release%)%)%)%)%,%
%is_version_build_prefix,%(%else-then(%is_version_build_prefix%,%(%is_Version_build_prefix%)%)%)%,%
%version_build_prefix,%(%else-then(%if-no(%is_version_build_prefix%,,%(%version_build_prefix%)%)%,%(%if-no(%is_version_build_prefix%,,%(%
%build%
%)%)%)%)%)%,%
%Version_build_prefix,%(%else-then(%if-no(%is_version_build_prefix%,,%(%Version_build_prefix%)%)%,%(%if-no(%is_version_build_prefix%,,%(%version_build_prefix%)%)%)%)%)%,%
%VERSION_BUILD_PREFIX,%(%else-then(%VERSION_BUILD_PREFIX%,%(%toupper(%Version_build_prefix%)%)%)%)%,%
%version_build_prefix,%(%else-then(%_version_build_prefix%,%(%tolower(%Version_build_prefix%)%)%)%)%,%
%is_version_build_date,%(%else-then(%is_version_build_date%,%(%is_Version_build_date%)%)%)%,%
%version_build_date,%(%else-then(%if-no(%is_version_build_date%,,%(%version_build_date%)%)%,%(%if-no(%is_version_build_date%,,%(%
%%date()%%
%)%)%)%)%)%,%
%Version_build_date,%(%else-then(%if-no(%is_version_build_date%,,%(%Version_build_date%)%)%,%(%if-no(%is_version_build_date%,,%(%version_build_date%)%)%)%)%)%,%
%VERSION_BUILD_DATE,%(%else-then(%VERSION_BUILD_DATE%,%(%toupper(%Version_build_date%)%)%)%)%,%
%version_build_date,%(%else-then(%_version_build_date%,%(%tolower(%Version_build_date%)%)%)%)%,%
%%(%
%%if(%Class%,%(%
%
#ifndef %FILE_IFNDEF_BASE%_NAME
#define %FILE_IFNDEF_BASE%_NAME "lib%Library%"
#endif /* ndef %FILE_IFNDEF_BASE%_NAME */

#ifndef %FILE_IFNDEF_BASE%_MAJOR
#define %FILE_IFNDEF_BASE%_MAJOR %Version_major%
#endif /* ndef %FILE_IFNDEF_BASE%_MAJOR */

#ifndef %FILE_IFNDEF_BASE%_MINOR
#define %FILE_IFNDEF_BASE%_MINOR %Version_minor%
#endif /* ndef %FILE_IFNDEF_BASE%_MINOR */

#ifndef %FILE_IFNDEF_BASE%_RELEASE
#define %FILE_IFNDEF_BASE%_RELEASE %Version_release%
#endif /* ndef %FILE_IFNDEF_BASE%_RELEASE */

#ifndef %FILE_IFNDEF_BASE%_BUILD_PREFIX
/* #define %FILE_IFNDEF_BASE%_BUILD_PREFIX %Version_build_prefix% */
#endif /* ndef %FILE_IFNDEF_BASE%_BUILD_PREFIX */

#ifndef %FILE_IFNDEF_BASE%_BUILD_DATE
#define %FILE_IFNDEF_BASE%_BUILD_DATE %Version_build_date%
#endif /* ndef %FILE_IFNDEF_BASE%_BUILD_DATE */

#ifndef %FILE_IFNDEF_BASE%_BUILD
#ifndef %FILE_IFNDEF_BASE%_BUILD_PREFIX
#define  %FILE_IFNDEF_BASE%_BUILD  %FILE_IFNDEF_BASE%_BUILD_DATE
#else /* ndef %FILE_IFNDEF_BASE%_BUILD_PREFIX */
#define  %FILE_IFNDEF_BASE%_BUILD  %FILE_IFNDEF_BASE%_BUILD_PREFIX-%FILE_IFNDEF_BASE%_BUILD_DATE
#endif /* ndef %FILE_IFNDEF_BASE%_BUILD_PREFIX */
#endif /* ndef %FILE_IFNDEF_BASE%_BUILD */

#ifndef %FILE_IFNDEF_BASE%_BUILD_CHARS
#define %FILE_IFNDEF_BASE%_BUILD_CHARS XOS_2CHARS%(()%%FILE_IFNDEF_BASE%_BUILD%())%
#endif /* ndef %FILE_IFNDEF_BASE%_BUILD_CHARS */
%
%)%)%%
%%Namespace_begin%%
%%if(%Class%,%(%
%
namespace which {
/*
**************************************************************************
** class %Class%t
**************************************************************************
*/
template <class TExtends = lib::extended::%Class%, class TImplements = typename TExtends::implements>
class exported %Class%t: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef versiont derives;

    /* constructor / destructor */
    %Class%t(const %Class%t& copy): extends(copy) {
    }
    %Class%t(): extends
    (%FILE_IFNDEF_BASE%_NAME, 
     %FILE_IFNDEF_BASE%_MAJOR, %FILE_IFNDEF_BASE%_MINOR, 
     %FILE_IFNDEF_BASE%_RELEASE, %FILE_IFNDEF_BASE%_BUILD_CHARS) {
    }
    virtual ~%Class%t() {
    }
}; /* class %Class%t */
typedef %Class%t<> %Class%;
} /* namespace which */

/*
**************************************************************************
** class %Class%
**************************************************************************
*/
const xos::lib::%Class% &%Class%::which() {
    static const %Namespace_ns%::which::%Class% %Class%;
    return %Class%;
}
%
%)%)%%
%%Namespace_end%%
%)%)%