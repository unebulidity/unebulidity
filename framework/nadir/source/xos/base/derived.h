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
**   File: derived.h
** 
** Author: $author$
**   Date: 12/9/2022
**************************************************************************
*/
#ifndef XOS_BASE_DERIVED_H
#define XOS_BASE_DERIVED_H

#include "xos/base/base.h"

#if defined(__cplusplus) 
namespace xos {
namespace base {
#else /* defined(__cplusplus) */
#endif /* defined(__cplusplus) */

#if defined(__cplusplus)
/*
**************************************************************************
** class derivedt
**************************************************************************
*/
template <class TExtends = extend, class TImplements = implement>
class exported derivedt: virtual public TImplements, public TExtends {
public:
    typedef TImplements c_Implements, cImplements, CImplements, Implements, implements;
    typedef TExtends c_Extends, cExtends, CExtends, Extends, extends;
    typedef derivedt c_Derives, cDerives, CDerives, Derives, derives;

    /*
    **************************************************************************
    ** constructor / destructor
    **************************************************************************
    */
    derivedt(const derivedt &copy): extends(copy) {
    }
    derivedt() {
    }
    virtual ~derivedt() {
    }

protected:
}; /* class derivedt */
typedef derivedt<> derived;
#else /* defined(__cplusplus) */
#endif /* defined(__cplusplus) */

#if defined(__cplusplus) 
} /* namespace base */
} /* namespace xos */
#else /* defined(__cplusplus) */
#endif /* defined(__cplusplus) */

#endif /* ndef XOS_BASE_DERIVED_H */
