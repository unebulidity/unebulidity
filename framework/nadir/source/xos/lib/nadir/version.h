/*
**************************************************************************
** Copyright (c) 1988-2022 $organization$
** 
** This software is provided by the author and contributors ``as is'' 
** and any express or implied warranties, including, but not limited to, 
** the implied warranties of merchantability and fitness for a particular 
** purpose are disclaimed. In no event shall the author or contributors 
** be liable for any direct, indirect, incidental, special, exemplary, 
** or consequential damages (including, but not limited to, procurement 
** of substitute goods or services; loss of use, data, or profits; or 
** business interruption) however caused and on any theory of liability, 
** whether in contract, strict liability, or tort (including negligence 
** or otherwise) arising in any way out of the use of this software, 
** even if advised of the possibility of such damage.
** 
**   File: version.h
** 
** Author: $author$
**   Date: 12/12/2022
**************************************************************************
*/
#ifndef XOS_LIB_NADIR_VERSION_H
#define XOS_LIB_NADIR_VERSION_H

#if defined(__cplusplus) 
#define XOS_LIB_NADIR_VERSION_HPP
#else /* defined(__cplusplus) */
#endif /* defined(__cplusplus) */

#include "xos/lib/version.h"

#if defined(__cplusplus) 
namespace xos {
namespace lib {
namespace nadir {
#else /* defined(__cplusplus) */
#endif /* defined(__cplusplus) */

#if defined(__cplusplus)
/*
**************************************************************************
** class version
**************************************************************************
*/
class exported version {
public:
    /* which */
    static const xos::lib::version& which();
}; /* class version */
#else /* defined(__cplusplus) */
#endif /* defined(__cplusplus) */

#if defined(__cplusplus) 
} /* namespace nadir */
} /* namespace lib */
} /* namespace xos */
#else /* defined(__cplusplus) */
#endif /* defined(__cplusplus) */

#endif /* ndef XOS_LIB_NADIR_VERSION_H */
