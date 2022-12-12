//////////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2022 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: derived.mm
///
/// Author: $author$
///   Date: 12/9/2022
//////////////////////////////////////////////////////////////////////////
#include "xos/base/derived.hh"

#ifndef XOS_BASE_DERIVED_INSTANCE
/// #define XOS_BASE_DERIVED_INSTANCE 
#else /// ndef XOS_BASE_DERIVED_INSTANCE 
#endif /// ndef XOS_BASE_DERIVED_INSTANCE 

namespace xos {
namespace base {

/// class derivedt
#ifdef XOS_BASE_DERIVED_INSTANCE
static derived the_derived;
#endif /// def XOS_BASE_DERIVED_INSTANCE 

} /// namespace base 
} /// namespace xos 
