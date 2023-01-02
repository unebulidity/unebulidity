%########################################################################
%# Copyright (c) 1988-2023 $organization$
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
%#   File: main-options-header-hpp.t
%#
%# Author: $author$
%#   Date: 1/2/2023
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_ifndef,%(%else-then(%is_ifndef%,%(%is_Ifndef%)%)%)%,%
%ifndef,%(%else-then(%if-no(%is_ifndef%,,%(%ifndef%)%)%,%(%if-no(%is_ifndef%,,%(%
%%Namespace_ifndef%%
%)%)%)%)%)%,%
%Ifndef,%(%else-then(%if-no(%is_ifndef%,,%(%Ifndef%)%)%,%(%if-no(%is_ifndef%,,%(%ifndef%)%)%)%)%)%,%
%IFNDEF,%(%else-then(%IFNDEF%,%(%toupper(%Ifndef%)%)%)%)%,%
%ifndef,%(%else-then(%_ifndef%,%(%tolower(%Ifndef%)%)%)%)%,%
%is_extends_ifndef,%(%else-then(%is_extends_ifndef%,%(%is_Extends_ifndef%)%)%)%,%
%extends_ifndef,%(%else-then(%if-no(%is_extends_ifndef%,,%(%extends_ifndef%)%)%,%(%if-no(%is_extends_ifndef%,,%(%
%%Extends_namespace_ifndef%%
%)%)%)%)%)%,%
%Extends_ifndef,%(%else-then(%if-no(%is_extends_ifndef%,,%(%Extends_ifndef%)%)%,%(%if-no(%is_extends_ifndef%,,%(%extends_ifndef%)%)%)%)%)%,%
%EXTENDS_IFNDEF,%(%else-then(%EXTENDS_IFNDEF%,%(%toupper(%Extends_ifndef%)%)%)%)%,%
%extends_ifndef,%(%else-then(%_extends_ifndef%,%(%tolower(%Extends_ifndef%)%)%)%)%,%
%%(%
%%parse(%Parameters%,;,,,,%(%
%%with(%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%
%%else-then(%right(%Parameter%,=)%,%(%replace(%(-)%,%(_)%,%right(%Parameter%,:)%)%)%)%%
%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%%(%
%%if-no(%is_Main_class%,%(
/*/
)%,%(%
%
/// class %Class%t
template 
<class TExtends = %Extends_namespace_ns%::%Class%t<>, 
 class TImplements = typename TExtends::implements>

class exported %Class%t: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef %Class%t derives;

    typedef typename extends::char_t char_t;
    typedef typename extends::end_char_t end_char_t;
    enum { end_char = extends::end_char };
    typedef typename extends::string_t string_t;
    typedef typename extends::reader_t reader_t;
    typedef typename extends::writer_t writer_t;
    typedef typename extends::file_t file_t;

    /// constructor / destructor
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

    /// ...run
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
%
%)%)%%
%
    /// on...%Name%_option...%if(%Optional%,%(
    virtual int on_get_%Name%_option
    (const char_t* optarg, int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;
        return err;
    }
    virtual int on_%Name%_option_get
    (const char_t* optarg, int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;
        return err;
    })%)%
    virtual int on_set_%Name%_option
    (const char_t* optarg, int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;%if(%None%,%()%,%(
        if ((optarg) && (optarg[0])) {
        } else {
        })%)%
        return err;
    }
    virtual int on_%Name%_option_set
    (const char_t* optarg, int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;%if(%None%,%()%,%(
        if ((optarg) && (optarg[0])) {
        } else {
        })%)%
        return err;
    }
    virtual int on_%Name%_option
    (int optval, const char_t* optarg, const char_t* optname,
     int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;%if(%None%,%(
        if (!(err = on_set_%Name%_option(optarg, optind, argc, argv, env))) {
            if (!(err = on_%Name%_option_set(optarg, optind, argc, argv, env))) {
            } else {
            }
        } else {
        })%,%(
        if ((optarg) && (optarg[0])) {
            if (!(err = on_set_%Name%_option(optarg, optind, argc, argv, env))) {
                if (!(err = on_%Name%_option_set(optarg, optind, argc, argv, env))) {
                } else {
                }
            } else {
            }
        } else {%if(%Optional%,%(
            if (!(err = on_get_%Name%_option(optarg, optind, argc, argv, env))) {
                if (!(err = on_%Name%_option_get(optarg, optind, argc, argv, env))) {
                } else {
                }
            } else {
            })%)%
        })%)%
        return err;
    }
%
%%if-no(%IsUsage%,%()%,%(%
%    virtual const char_t* %Name%_option_usage(const char_t*& optarg, const struct option* longopt) {
        const char_t* chars = %IFNDEF%_%CLASS%_%NAME%_OPTUSE;
        optarg = %IFNDEF%_%CLASS%_%NAME%_OPTARG;
        return chars;
    }
)%)%%
%)%)%%
%)%,Parameter)%%
%
    /// on_option
    virtual int on_option
    (int optval, const char_t* optarg, const char_t* optname,
     int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;
        switch(optval) {%
%%if(%Parameters%,%(
)%)%%
%%parse(%Parameters%,;,,,,%(%
%%with(%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%
%%else-then(%right(%Parameter%,=)%,%(%replace(%(-)%,%(_)%,%right(%Parameter%,:)%)%)%)%%
%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%%(
        case %IFNDEF%_%CLASS%_%NAME%_OPTVAL_C:
            err = this->on_%Name%_option(optval, optarg, optname, optind, argc, argv, env);
            break;)%)%%
%)%,Parameter)%%
%%if(%Parameters%,%(
)%)%%
%
        default:
            err = extends::on_option(optval, optarg, optname, optind, argc, argv, env);
        }
        return err;
    }
    
    /// option_usage
    virtual const char_t* option_usage(const char_t*& optarg, const struct option* longopt) {
        const char_t* chars = "";
        switch(longopt->val) {%
%%if(%Parameters%,%(
)%)%%
%%parse(%Parameters%,;,,,,%(%
%%with(%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%
%%else-then(%right(%Parameter%,=)%,%(%replace(%(-)%,%(_)%,%right(%Parameter%,:)%)%)%)%%
%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%%(
        case %IFNDEF%_%CLASS%_%NAME%_OPTVAL_C:%if-no(%IsUsage%,%(
            optarg = %IFNDEF%_%CLASS%_%NAME%_OPTARG;
            chars = %IFNDEF%_%CLASS%_%NAME%_OPTUSE;)%,%(
            chars = this->%Name%_option_usage(optarg, longopt);)%)%
            break;)%)%%
%)%,Parameter)%%
%%if(%Parameters%,%(
)%)%%
%
        default:
            chars = extends::option_usage(optarg, longopt);
            break;
        }
        return chars;
    }

    /// options
    virtual const char_t* options(const struct option*& longopts) {
        static const char_t* chars = %IFNDEF%_%CLASS%_OPTIONS_CHARS;
        static struct option optstruct[]= {
            %IFNDEF%_%CLASS%_OPTIONS_OPTIONS
            {0, 0, 0, 0}};
        longopts = optstruct;
        return chars;
    }

    /// arguments
    virtual const char_t* arguments(const char_t**& argv) {
        static const char_t* _args = %IFNDEF%_%CLASS%_ARGS;
        static const char_t* _argv[] = {
            %IFNDEF%_%CLASS%_ARGV
            0};
        argv = _argv;
        return _args;
    }
%
%%if-no(%is_Main_class%,%(
/*/
)%,%(
}; /// class %Class%t
typedef %Class%t<> %Class%t;
%
%)%)%