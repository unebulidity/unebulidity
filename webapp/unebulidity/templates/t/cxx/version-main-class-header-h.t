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
%#   File: version-main-class-header-h.t
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
%%(%
%%If_defined__cplusplus_namespace_begin%%
%%if(%Class%,%(%
%
%If_defined__cplusplus_begin%%
%/*
**************************************************************************
** class %Class%t
**************************************************************************
*/
template 
<class TExtends = %Namespace_ns%::%Extends%t<>,  class TImplements = %Implements%>

class %if-then(%Class_exported%, )%%Class%t: virtual public TImplements, public TExtends {
public:
    typedef TImplements c_Implements, cImplements, CImplements, Implements, implements;
    typedef TExtends c_Extends, cExtends, CExtends, Extends, extends;
    typedef %Class%t c_Derives, cDerives, CDerives, Derives, derives;

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
    %Class%t(): run_(0) {
    }
    virtual ~%Class%t() {
    }
private:
    %Class%t(const %Class%t &copy) {
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
}; /* class %Class%t */
typedef %Class%t<> %Class%;
%
%%If_defined__cplusplus_end%%
%)%)%%
%%If_defined__cplusplus_namespace_end%%
%)%)%