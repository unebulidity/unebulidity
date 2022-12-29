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
%#   File: Application-form-html.t
%#
%# Author: $author$
%#   Date: 12/20/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_application,%(%else-then(%is_application%,%(%is_Application%)%)%)%,%
%application,%(%else-then(%if-no(%is_application%,,%(%application%)%)%,%(%if-no(%is_application%,,%(%
%%else-then(%include(%Include_path%/../t/Application.t)%,%(Application)%)%%
%)%)%)%)%)%,%
%Application,%(%else-then(%if-no(%is_application%,,%(%Application%)%)%,%(%if-no(%is_application%,,%(%application%)%)%)%)%)%,%
%APPLICATION,%(%else-then(%APPLICATION%,%(%toupper(%Application%)%)%)%)%,%
%application,%(%else-then(%_application%,%(%tolower(%Application%)%)%)%)%,%
%is_part,%(%else-then(%is_part%,%(%is_Part%)%)%)%,%
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(form)%)%)%)%)%,%
%Part,%(%else-then(%if-no(%is_part%,,%(%Part%)%)%,%(%if-no(%is_part%,,%(%part%)%)%)%)%)%,%
%PART,%(%else-then(%PART%,%(%toupper(%Part%)%)%)%)%,%
%part,%(%else-then(%_part%,%(%tolower(%Part%)%)%)%)%,%
%is_template_path,%(%else-then(%is_template_path%,%(%is_Template_path%)%)%)%,%
%template_path,%(%else-then(%if-no(%is_template_path%,,%(%template_path%)%)%,%(%if-no(%is_template_path%,,%(%
%../templates%
%)%)%)%)%)%,%
%Template_path,%(%else-then(%if-no(%is_template_path%,,%(%Template_path%)%)%,%(%if-no(%is_template_path%,,%(%template_path%)%)%)%)%)%,%
%TEMPLATE_PATH,%(%else-then(%TEMPLATE_PATH%,%(%toupper(%Template_path%)%)%)%)%,%
%template_path,%(%else-then(%_template_path%,%(%tolower(%Template_path%)%)%)%)%,%
%is_template_t_extension,%(%else-then(%is_template_t_extension%,%(%is_Template_t_extension%)%)%)%,%
%template_t_extension,%(%else-then(%if-no(%is_template_t_extension%,,%(%template_t_extension%)%)%,%(%if-no(%is_template_t_extension%,,%(%
%t%
%)%)%)%)%)%,%
%Template_t_extension,%(%else-then(%if-no(%is_template_t_extension%,,%(%Template_t_extension%)%)%,%(%if-no(%is_template_t_extension%,,%(%template_t_extension%)%)%)%)%)%,%
%TEMPLATE_T_EXTENSION,%(%else-then(%TEMPLATE_T_EXTENSION%,%(%toupper(%Template_t_extension%)%)%)%)%,%
%template_t_extension,%(%else-then(%_template_t_extension%,%(%tolower(%Template_t_extension%)%)%)%)%,%
%is_template_t_path,%(%else-then(%is_template_t_path%,%(%is_Template_t_path%)%)%)%,%
%template_t_path,%(%else-then(%if-no(%is_template_t_path%,,%(%template_t_path%)%)%,%(%if-no(%is_template_t_path%,,%(%
%%if-then(%Template_path%,%(/%Template_t_extension%)%)%%
%)%)%)%)%)%,%
%Template_t_path,%(%else-then(%if-no(%is_template_t_path%,,%(%Template_t_path%)%)%,%(%if-no(%is_template_t_path%,,%(%template_t_path%)%)%)%)%)%,%
%TEMPLATE_T_PATH,%(%else-then(%TEMPLATE_T_PATH%,%(%toupper(%Template_t_path%)%)%)%)%,%
%template_t_path,%(%else-then(%_template_t_path%,%(%tolower(%Template_t_path%)%)%)%)%,%
%is_template_action_path,%(%else-then(%is_template_action_path%,%(%is_Template_action_path%)%)%)%,%
%template_action_path,%(%else-then(%if-no(%is_template_action_path%,,%(%template_action_path%)%)%,%(%if-no(%is_template_action_path%,,%(%
%%else-then(%Action_path%,%(%Template_t_path%)%)%%
%)%)%)%)%)%,%
%Template_action_path,%(%else-then(%if-no(%is_template_action_path%,,%(%Template_action_path%)%)%,%(%if-no(%is_template_action_path%,,%(%template_action_path%)%)%)%)%)%,%
%TEMPLATE_ACTION_PATH,%(%else-then(%TEMPLATE_ACTION_PATH%,%(%toupper(%Template_action_path%)%)%)%)%,%
%template_action_path,%(%else-then(%_template_action_path%,%(%tolower(%Template_action_path%)%)%)%)%,%
%is_template_type,%(%else-then(%is_template_type%,%(%is_Template_type%)%)%)%,%
%template_type,%(%else-then(%if-no(%is_template_type%,,%(%template_type%)%)%,%(%if-no(%is_template_type%,,%(%
%%else-then(%Action_type%,%(%Template_t_extension%)%)%%
%)%)%)%)%)%,%
%Template_type,%(%else-then(%if-no(%is_template_type%,,%(%Template_type%)%)%,%(%if-no(%is_template_type%,,%(%template_type%)%)%)%)%)%,%
%TEMPLATE_TYPE,%(%else-then(%TEMPLATE_TYPE%,%(%toupper(%Template_type%)%)%)%)%,%
%template_type,%(%else-then(%_template_type%,%(%tolower(%Template_type%)%)%)%)%,%
%is_template_type_extension,%(%else-then(%is_template_type_extension%,%(%is_Template_type_extension%)%)%)%,%
%template_type_extension,%(%else-then(%if-no(%is_template_type_extension%,,%(%template_type_extension%)%)%,%(%if-no(%is_template_type_extension%,,%(%
%%Template_type%%
%)%)%)%)%)%,%
%Template_type_extension,%(%else-then(%if-no(%is_template_type_extension%,,%(%Template_type_extension%)%)%,%(%if-no(%is_template_type_extension%,,%(%template_type_extension%)%)%)%)%)%,%
%TEMPLATE_TYPE_EXTENSION,%(%else-then(%TEMPLATE_TYPE_EXTENSION%,%(%toupper(%Template_type_extension%)%)%)%)%,%
%template_type_extension,%(%else-then(%_template_type_extension%,%(%tolower(%Template_type_extension%)%)%)%)%,%
%is_template_base,%(%else-then(%is_template_base%,%(%is_Template_base%)%)%)%,%
%template_base,%(%else-then(%if-no(%is_template_base%,,%(%template_base%)%)%,%(%if-no(%is_template_base%,,%(%
%%else-then(%Action_base%,%(%Template_type%)%)%%
%)%)%)%)%)%,%
%Template_base,%(%else-then(%if-no(%is_template_base%,,%(%Template_base%)%)%,%(%if-no(%is_template_base%,,%(%template_base%)%)%)%)%)%,%
%TEMPLATE_BASE,%(%else-then(%TEMPLATE_BASE%,%(%toupper(%Template_base%)%)%)%)%,%
%template_base,%(%else-then(%_template_base%,%(%tolower(%Template_base%)%)%)%)%,%
%is_template_type_base,%(%else-then(%is_template_type_base%,%(%is_Template_type_base%)%)%)%,%
%template_type_base,%(%else-then(%if-no(%is_template_type_base%,,%(%template_type_base%)%)%,%(%if-no(%is_template_type_base%,,%(%
%%Template_type_extension%%
%)%)%)%)%)%,%
%Template_type_base,%(%else-then(%if-no(%is_template_type_base%,,%(%Template_type_base%)%)%,%(%if-no(%is_template_type_base%,,%(%template_type_base%)%)%)%)%)%,%
%TEMPLATE_TYPE_BASE,%(%else-then(%TEMPLATE_TYPE_BASE%,%(%toupper(%Template_type_base%)%)%)%)%,%
%template_type_base,%(%else-then(%_template_type_base%,%(%tolower(%Template_type_base%)%)%)%)%,%
%is_template_extension,%(%else-then(%is_template_extension%,%(%is_Template_extension%)%)%)%,%
%template_extension,%(%else-then(%if-no(%is_template_extension%,,%(%template_extension%)%)%,%(%if-no(%is_template_extension%,,%(%
%%else-then(%Action_extension%,%(%Template_t_extension%)%)%%
%)%)%)%)%)%,%
%Template_extension,%(%else-then(%if-no(%is_template_extension%,,%(%Template_extension%)%)%,%(%if-no(%is_template_extension%,,%(%template_extension%)%)%)%)%)%,%
%TEMPLATE_EXTENSION,%(%else-then(%TEMPLATE_EXTENSION%,%(%toupper(%Template_extension%)%)%)%)%,%
%template_extension,%(%else-then(%_template_extension%,%(%tolower(%Template_extension%)%)%)%)%,%
%is_template_file_base,%(%else-then(%is_template_file_base%,%(%is_Template_file_base%)%)%)%,%
%template_file_base,%(%else-then(%if-no(%is_template_file_base%,,%(%template_file_base%)%)%,%(%if-no(%is_template_file_base%,,%(%
%%Template_base%%
%)%)%)%)%)%,%
%Template_file_base,%(%else-then(%if-no(%is_template_file_base%,,%(%Template_file_base%)%)%,%(%if-no(%is_template_file_base%,,%(%template_file_base%)%)%)%)%)%,%
%TEMPLATE_FILE_BASE,%(%else-then(%TEMPLATE_FILE_BASE%,%(%toupper(%Template_file_base%)%)%)%)%,%
%template_file_base,%(%else-then(%_template_file_base%,%(%tolower(%Template_file_base%)%)%)%)%,%
%is_template_file_extension,%(%else-then(%is_template_file_extension%,%(%is_Template_file_extension%)%)%)%,%
%template_file_extension,%(%else-then(%if-no(%is_template_file_extension%,,%(%template_file_extension%)%)%,%(%if-no(%is_template_file_extension%,,%(%
%%Template_extension%%
%)%)%)%)%)%,%
%Template_file_extension,%(%else-then(%if-no(%is_template_file_extension%,,%(%Template_file_extension%)%)%,%(%if-no(%is_template_file_extension%,,%(%template_file_extension%)%)%)%)%)%,%
%TEMPLATE_FILE_EXTENSION,%(%else-then(%TEMPLATE_FILE_EXTENSION%,%(%toupper(%Template_file_extension%)%)%)%)%,%
%template_file_extension,%(%else-then(%_template_file_extension%,%(%tolower(%Template_file_extension%)%)%)%)%,%
%is_template_cgi_path,%(%else-then(%is_template_cgi_path%,%(%is_Template_cgi_path%)%)%)%,%
%template_cgi_path,%(%else-then(%if-no(%is_template_cgi_path%,,%(%template_cgi_path%)%)%,%(%if-no(%is_template_cgi_path%,,%(%
%/%application%-cgi%
%)%)%)%)%)%,%
%Template_cgi_path,%(%else-then(%if-no(%is_template_cgi_path%,,%(%Template_cgi_path%)%)%,%(%if-no(%is_template_cgi_path%,,%(%template_cgi_path%)%)%)%)%)%,%
%TEMPLATE_CGI_PATH,%(%else-then(%TEMPLATE_CGI_PATH%,%(%toupper(%Template_cgi_path%)%)%)%)%,%
%template_cgi_path,%(%else-then(%_template_cgi_path%,%(%tolower(%Template_cgi_path%)%)%)%)%,%
%is_template_cgi,%(%else-then(%is_template_cgi%,%(%is_Template_cgi%)%)%)%,%
%template_cgi,%(%else-then(%if-no(%is_template_cgi%,,%(%template_cgi%)%)%,%(%if-no(%is_template_cgi%,,%(%
%cgi%
%)%)%)%)%)%,%
%Template_cgi,%(%else-then(%if-no(%is_template_cgi%,,%(%Template_cgi%)%)%,%(%if-no(%is_template_cgi%,,%(%template_cgi%)%)%)%)%)%,%
%TEMPLATE_CGI,%(%else-then(%TEMPLATE_CGI%,%(%toupper(%Template_cgi%)%)%)%)%,%
%template_cgi,%(%else-then(%_template_cgi%,%(%tolower(%Template_cgi%)%)%)%)%,%
%is_template_cgicatch,%(%else-then(%is_template_cgicatch%,%(%is_Template_cgicatch%)%)%)%,%
%template_cgicatch,%(%else-then(%if-no(%is_template_cgicatch%,,%(%template_cgicatch%)%)%,%(%if-no(%is_template_cgicatch%,,%(%
%cgicatch%
%)%)%)%)%)%,%
%Template_cgicatch,%(%else-then(%if-no(%is_template_cgicatch%,,%(%Template_cgicatch%)%)%,%(%if-no(%is_template_cgicatch%,,%(%template_cgicatch%)%)%)%)%)%,%
%TEMPLATE_CGICATCH,%(%else-then(%TEMPLATE_CGICATCH%,%(%toupper(%Template_cgicatch%)%)%)%)%,%
%template_cgicatch,%(%else-then(%_template_cgicatch%,%(%tolower(%Template_cgicatch%)%)%)%)%,%
%is_template_cgithrow,%(%else-then(%is_template_cgithrow%,%(%is_Template_cgithrow%)%)%)%,%
%template_cgithrow,%(%else-then(%if-no(%is_template_cgithrow%,,%(%template_cgithrow%)%)%,%(%if-no(%is_template_cgithrow%,,%(%
%cgithrow%
%)%)%)%)%)%,%
%Template_cgithrow,%(%else-then(%if-no(%is_template_cgithrow%,,%(%Template_cgithrow%)%)%,%(%if-no(%is_template_cgithrow%,,%(%template_cgithrow%)%)%)%)%)%,%
%TEMPLATE_CGITHROW,%(%else-then(%TEMPLATE_CGITHROW%,%(%toupper(%Template_cgithrow%)%)%)%)%,%
%template_cgithrow,%(%else-then(%_template_cgithrow%,%(%tolower(%Template_cgithrow%)%)%)%)%,%
%is_option_action,%(%else-then(%is_option_action%,%(%is_Option_action%)%)%)%,%
%option_action,%(%else-then(%if-no(%is_option_action%,,%(%option_action%)%)%,%(%if-no(%is_option_action%,,%(%
%%Template_action_path%/%Template_type%/%Template_file_base%.%Template_file_extension%%
%)%)%)%)%)%,%
%Option_action,%(%else-then(%if-no(%is_option_action%,,%(%Option_action%)%)%,%(%if-no(%is_option_action%,,%(%option_action%)%)%)%)%)%,%
%OPTION_ACTION,%(%else-then(%OPTION_ACTION%,%(%toupper(%Option_action%)%)%)%)%,%
%option_action,%(%else-then(%_option_action%,%(%tolower(%Option_action%)%)%)%)%,%
%is_option_text,%(%else-then(%is_option_text%,%(%is_Option_text%)%)%)%,%
%option_text,%(%else-then(%if-no(%is_option_text%,,%(%option_text%)%)%,%(%if-no(%is_option_text%,,%(%
%.%Template_type% file%
%)%)%)%)%)%,%
%Option_text,%(%else-then(%if-no(%is_option_text%,,%(%Option_text%)%)%,%(%if-no(%is_option_text%,,%(%option_text%)%)%)%)%)%,%
%OPTION_TEXT,%(%else-then(%OPTION_TEXT%,%(%toupper(%Option_text%)%)%)%)%,%
%option_text,%(%else-then(%_option_text%,%(%tolower(%Option_text%)%)%)%)%,%
%%(%
%%include(%Include_path%/Application-file-html.t)%%
%
<!--
=====================================================================
=== form
=====================================================================
-->
<form name="Form" method="POST" action="%Option_action%"
 onSubmit="return setFormSubmit(getFormValue2('FormTemplate','FormAction','Form'),getFormValue('FormMethod','Form'),'Form')">
    <div class="form">

    File: <input name="File" value=""></input>[%Template_type_base%][.%Template_type_extension%]
    <input type="radio" name="Extension" value="%Template_type_extension%" unchecked="checked">.%Template_type_extension%</input>
    <input type="radio" name="Extension" value="" checked="">no</input>
    <input type="checkbox" name="is_File" value="no" unchecked="checked">no</input>
    <br/>

    Template: <select name="FormTemplate">
    <option value="%Option_action%">%Option_text% (%Option_action%)</option>
    <option value=""></option>
    <option value="%Template_t_path%/t/parameters.t">t parameters &nbsp;&nbsp; (%Template_t_path%/t/parameters.t)</option>
    <option value="%Template_t_path%/t/functions.t">t functions &nbsp;&nbsp; (%Template_t_path%/t/functions.t)</option>
    <option value=""></option>
    <option value="%Template_cgi_path%/%Template_cgi%">cgi parameters &nbsp;&nbsp; (%Template_cgi_path%/%Template_cgi%)</option>
    <option value="%Template_cgi_path%/%Template_cgicatch%">catch cgi parameters &nbsp;&nbsp; (%Template_cgi_path%/%Template_cgicatch%)</option>
    <option value=""/>
    </select>
    <br/>

    <br/>
    Copyright:<input name="Genesis" size="10" value=""/>[1988]<b></b>
    <input type="checkbox" name="is_Genesis" value="no" unchecked="checked">no</input>
    <b>-</b><input name="Year" size="10" value=""/>[%%year%(()%%())%%%]<b></b>
    <input type="checkbox" name="is_Year" value="no" unchecked="checked">no</input>
    <b>&nbsp;&nbsp;</b>Organization:<input name="Organization" value=""></input>[$organization$]
    <input type="checkbox" name="is_Organization" value="no" unchecked="checked">no</input>
    <input type="checkbox" name="is_Copyright" value="no" unchecked="checked">no</input>
    <br/>
    Author:<input name="Author" value=""></input>[$author$]
    <input type="checkbox" name="is_Author" value="no" unchecked="checked">no</input>
    <b>&nbsp;&nbsp;</b>Date:<input name="Date" size="10" value=""/>[%%date%(()%%())%%%]<b></b>
    <input type="checkbox" name="is_Date" value="no" unchecked="checked">no</input>
    <b>&nbsp;&nbsp;</b><select name="Claims">
    <option value=""></option>
    <option value="as_is">``as is''</option>
    <option value=""></option>
    </select>[``as is'']
    <input type="checkbox" name="is_Claims" value="no" unchecked="checked">no</input>
    <br/>

    <br/>
    Content-Type: <select name="content_type">
    <option value="text/plain">text</option>
    <option value="text/html">html</option>
    <option value="text/xml">xml</option>
    <option value="application/json">json</option>
    <option value="application/javascript">javascript</option>
    <option value=""></option>
    </select>
    <br/>
    Action: <select name="FormAction">
    <option value="%Option_action%">%Option_text% (%Option_action%)</option>
    <option value=""></option>
    <option value="%Template_t_path%/t/parameters.t">t parameters &nbsp;&nbsp; (%Template_t_path%/t/parameters.t)</option>
    <option value="%Template_t_path%/t/functions.t">t functions &nbsp;&nbsp; (%Template_t_path%/t/functions.t)</option>
    <option value=""></option>
    <option value="%Template_cgi_path%/%Template_cgi%">cgi parameters &nbsp;&nbsp; (%Template_cgi_path%/%Template_cgi%)</option>
    <option value="%Template_cgi_path%/%Template_cgicatch%">catch cgi parameters &nbsp;&nbsp; (%Template_cgi_path%/%Template_cgicatch%)</option>
    <option value=""/>
    </select>
    <br/>
    Method: <select name="FormMethod">
    <option value="POST">POST</option>
    <option value="GET">GET</option>
    <option value=""></option>
    </select>
    <br/>
    <br/>
    <input type="submit" name="submit" value="submit"/><br/>
    </div>
</form>
%
%)%)%