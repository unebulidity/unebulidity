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
**   File: main_opt.h
** 
** Author: $author$
**   Date: 12/12/2022
**************************************************************************
*/
#ifndef XOS_APP_CONSOLE_NADIR_VERSION_MAIN_OPT_H
#define XOS_APP_CONSOLE_NADIR_VERSION_MAIN_OPT_H

#include "xos/lib/nadir/version.h"
#include "xos/app/console/version/main.h"

#if defined(__cplusplus) 
namespace xos {
namespace app {
namespace console {
namespace nadir {
namespace version {
#else /* defined(__cplusplus) */
#endif /* defined(__cplusplus) */

#if defined(__cplusplus)
/*
**************************************************************************
** class main_optt
**************************************************************************
*/
template 
<class TExtends = xos::app::console::version::maint
 <xos::lib::nadir::version>,  class TImplements = typename TExtends::implements>

class main_optt: virtual public TImplements, public TExtends {
public:
    typedef TImplements c_Implements, cImplements, CImplements, Implements, implements;
    typedef TExtends c_Extends, cExtends, CExtends, Extends, extends;
    typedef main_optt c_Derives, cDerives, CDerives, Derives, derives;

    typedef typename extends::char_t char_t;
    typedef typename extends::end_char_t end_char_t;
    enum { end_char = extends::end_char };
    typedef typename extends::string_t string_t;
    typedef typename extends::reader_t reader_t;
    typedef typename extends::writer_t writer_t;
    typedef typename extends::file_t file_t;

    /*
    **************************************************************************
    ** constructor / destructor
    **************************************************************************
    */
    main_optt(): run_(0) {
    }
    virtual ~main_optt() {
    }
private:
    main_optt(const main_optt &copy) {
        throw exception(exception_unexpected);
    }

protected:
    typedef typename extends::in_reader_t in_reader_t;
    typedef typename extends::out_writer_t out_writer_t;
    typedef typename extends::err_writer_t err_writer_t;

    /*
    **************************************************************************
    ** run
    **************************************************************************
    */
    int (derives::*run_)(int argc, char_t** argv, char_t** env);
    virtual int run(int argc, char_t** argv, char_t** env) {
        int err = 0;
        if ((run_)) {
            err = (this->*run_)(argc, argv, env);
        } else {
            err = extends::run(argc, argv, env);
        }
        return err;
    }

protected:
}; /* class main_optt */
typedef main_optt<> main_opt;
#else /* defined(__cplusplus) */
#endif /* defined(__cplusplus) */

#if defined(__cplusplus) 
} /* namespace version */
} /* namespace nadir */
} /* namespace console */
} /* namespace app */
} /* namespace xos */
#else /* defined(__cplusplus) */
#endif /* defined(__cplusplus) */

#endif /* ndef XOS_APP_CONSOLE_NADIR_VERSION_MAIN_OPT_H */
