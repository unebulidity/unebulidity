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
%#   File: Application-part-html.t
%#
%# Author: $author$
%#   Date: 12/16/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_do,%(%else-then(%is_do%,%(%is_Do%)%)%)%,%
%do,%(%else-then(%if-no(%is_do%,,%(%do%)%)%,%(%if-no(%is_do%,,%(%
%)%)%)%)%)%,%
%Do,%(%else-then(%if-no(%is_do%,,%(%Do%)%)%,%(%if-no(%is_do%,,%(%do%)%)%)%)%)%,%
%DO,%(%else-then(%DO%,%(%toupper(%Do%)%)%)%)%,%
%do,%(%else-then(%_do%,%(%tolower(%Do%)%)%)%)%,%
%is_what,%(%else-then(%is_what%,%(%is_What%)%)%)%,%
%what,%(%else-then(%if-no(%is_what%,,%(%what%)%)%,%(%if-no(%is_what%,,%(%
%)%)%)%)%)%,%
%What,%(%else-then(%if-no(%is_what%,,%(%What%)%)%,%(%if-no(%is_what%,,%(%what%)%)%)%)%)%,%
%WHAT,%(%else-then(%WHAT%,%(%toupper(%What%)%)%)%)%,%
%what,%(%else-then(%_what%,%(%tolower(%What%)%)%)%)%,%
%is_dowhat,%(%else-then(%is_dowhat%,%(%is_DoWhat%)%)%)%,%
%dowhat,%(%else-then(%if-no(%is_dowhat%,,%(%dowhat%)%)%,%(%if-no(%is_dowhat%,,%(%
%%if-then(%do%,%(%then-if(%what%,%(-)%)%)%)%%
%)%)%)%)%)%,%
%DoWhat,%(%else-then(%if-no(%is_dowhat%,,%(%DoWhat%)%)%,%(%if-no(%is_dowhat%,,%(%dowhat%)%)%)%)%)%,%
%DOWHAT,%(%else-then(%DOWHAT%,%(%toupper(%DoWhat%)%)%)%)%,%
%dowhat,%(%else-then(%_dowhat%,%(%tolower(%DoWhat%)%)%)%)%,%
%is_which,%(%else-then(%is_which%,%(%is_Which%)%)%)%,%
%which,%(%else-then(%if-no(%is_which%,,%(%which%)%)%,%(%if-no(%is_which%,,%(%
%)%)%)%)%)%,%
%Which,%(%else-then(%if-no(%is_which%,,%(%Which%)%)%,%(%if-no(%is_which%,,%(%which%)%)%)%)%)%,%
%WHICH,%(%else-then(%WHICH%,%(%toupper(%Which%)%)%)%)%,%
%which,%(%else-then(%_which%,%(%tolower(%Which%)%)%)%)%,%
%is_dowhich,%(%else-then(%is_dowhich%,%(%is_DoWhich%)%)%)%,%
%dowhich,%(%else-then(%if-no(%is_dowhich%,,%(%dowhich%)%)%,%(%if-no(%is_dowhich%,,%(%
%%if-then(%Do%,%(%then-if(%Which%,%( )%)%)%)%%
%)%)%)%)%)%,%
%DoWhich,%(%else-then(%if-no(%is_dowhich%,,%(%DoWhich%)%)%,%(%if-no(%is_dowhich%,,%(%dowhich%)%)%)%)%)%,%
%DOWHICH,%(%else-then(%DOWHICH%,%(%toupper(%DoWhich%)%)%)%)%,%
%dowhich,%(%else-then(%_dowhich%,%(%tolower(%DoWhich%)%)%)%)%,%
%is_thing,%(%else-then(%is_thing%,%(%is_Thing%)%)%)%,%
%thing,%(%else-then(%if-no(%is_thing%,,%(%thing%)%)%,%(%if-no(%is_thing%,,%(%
%)%)%)%)%)%,%
%Thing,%(%else-then(%if-no(%is_thing%,,%(%Thing%)%)%,%(%if-no(%is_thing%,,%(%thing%)%)%)%)%)%,%
%THING,%(%else-then(%THING%,%(%toupper(%Thing%)%)%)%)%,%
%thing,%(%else-then(%_thing%,%(%tolower(%Thing%)%)%)%)%,%
%is_dothing,%(%else-then(%is_dothing%,%(%is_DoThing%)%)%)%,%
%dothing,%(%else-then(%if-no(%is_dothing%,,%(%dothing%)%)%,%(%if-no(%is_dothing%,,%(%
%%if-then(%Do%,%(%then-if(%Thing%,%( )%)%)%)%%
%)%)%)%)%)%,%
%DoThing,%(%else-then(%if-no(%is_dothing%,,%(%DoThing%)%)%,%(%if-no(%is_dothing%,,%(%dothing%)%)%)%)%)%,%
%DOTHING,%(%else-then(%DOTHING%,%(%toupper(%DoThing%)%)%)%)%,%
%dothing,%(%else-then(%_dothing%,%(%tolower(%DoThing%)%)%)%)%,%
%application,%(%else-then(%if-no(%is_application%,,%(%application%)%)%,%(%if-no(%is_application%,,%(%
%%else-then(%include(%Include_path%/../t/Application.t)%,%(Application)%)%%
%)%)%)%)%)%,%
%Application,%(%else-then(%if-no(%is_application%,,%(%Application%)%)%,%(%if-no(%is_application%,,%(%application%)%)%)%)%)%,%
%APPLICATION,%(%else-then(%APPLICATION%,%(%toupper(%Application%)%)%)%)%,%
%application,%(%else-then(%_application%,%(%tolower(%Application%)%)%)%)%,%
%is_section,%(%else-then(%is_section%,%(%is_Section%)%)%)%,%
%section,%(%else-then(%if-no(%is_section%,,%(%section%)%)%,%(%if-no(%is_section%,,%(%
%)%)%)%)%)%,%
%Section,%(%else-then(%if-no(%is_section%,,%(%Section%)%)%,%(%if-no(%is_section%,,%(%section%)%)%)%)%)%,%
%SECTION,%(%else-then(%SECTION%,%(%toupper(%Section%)%)%)%)%,%
%section,%(%else-then(%_section%,%(%tolower(%Section%)%)%)%)%,%
%is_applicationsection,%(%else-then(%is_applicationsection%,%(%is_ApplicationSection%)%)%)%,%
%applicationsection,%(%else-then(%if-no(%is_applicationsection%,,%(%applicationsection%)%)%,%(%if-no(%is_applicationsection%,,%(%
%%if-then(%Application%,%(%then-if(%Section%,%(-)%)%)%)%%
%)%)%)%)%)%,%
%ApplicationSection,%(%else-then(%if-no(%is_applicationsection%,,%(%ApplicationSection%)%)%,%(%if-no(%is_applicationsection%,,%(%applicationsection%)%)%)%)%)%,%
%APPLICATIONSECTION,%(%else-then(%APPLICATIONSECTION%,%(%toupper(%ApplicationSection%)%)%)%)%,%
%applicationsection,%(%else-then(%_applicationsection%,%(%tolower(%ApplicationSection%)%)%)%)%,%
%is_page,%(%else-then(%is_page%,%(%is_Page%)%)%)%,%
%page,%(%else-then(%if-no(%is_page%,,%(%page%)%)%,%(%if-no(%is_page%,,%(%
%%dowhat%%
%)%)%)%)%)%,%
%Page,%(%else-then(%if-no(%is_page%,,%(%Page%)%)%,%(%if-no(%is_page%,,%(%page%)%)%)%)%)%,%
%PAGE,%(%else-then(%PAGE%,%(%toupper(%Page%)%)%)%)%,%
%page,%(%else-then(%_page%,%(%tolower(%Page%)%)%)%)%,%
%is_applicationpage,%(%else-then(%is_applicationpage%,%(%is_ApplicationPage%)%)%)%,%
%applicationpage,%(%else-then(%if-no(%is_applicationpage%,,%(%applicationpage%)%)%,%(%if-no(%is_applicationpage%,,%(%
%%if-then(%ApplicationSection%,%(%then-if(%Page%,%(-)%)%)%)%%
%)%)%)%)%)%,%
%ApplicationPage,%(%else-then(%if-no(%is_applicationpage%,,%(%ApplicationPage%)%)%,%(%if-no(%is_applicationpage%,,%(%applicationpage%)%)%)%)%)%,%
%APPLICATIONPAGE,%(%else-then(%APPLICATIONPAGE%,%(%toupper(%ApplicationPage%)%)%)%)%,%
%applicationpage,%(%else-then(%_applicationpage%,%(%tolower(%ApplicationPage%)%)%)%)%,%
%is_part,%(%else-then(%is_part%,%(%is_Part%)%)%)%,%
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(%
%part%
%)%)%)%)%)%,%
%Part,%(%else-then(%if-no(%is_part%,,%(%Part%)%)%,%(%if-no(%is_part%,,%(%part%)%)%)%)%)%,%
%PART,%(%else-then(%PART%,%(%toupper(%Part%)%)%)%)%,%
%part,%(%else-then(%_part%,%(%tolower(%Part%)%)%)%)%,%
%is_applicationpart,%(%else-then(%is_applicationpart%,%(%is_ApplicationPart%)%)%)%,%
%applicationpart,%(%else-then(%if-no(%is_applicationpart%,,%(%applicationpart%)%)%,%(%if-no(%is_applicationpart%,,%(%
%%if-then(%ApplicationPage%,%(%then-if(%Part%,%(-)%)%)%)%%
%)%)%)%)%)%,%
%ApplicationPart,%(%else-then(%if-no(%is_applicationpart%,,%(%ApplicationPart%)%)%,%(%if-no(%is_applicationpart%,,%(%applicationpart%)%)%)%)%)%,%
%APPLICATIONPART,%(%else-then(%APPLICATIONPART%,%(%toupper(%ApplicationPart%)%)%)%)%,%
%applicationpart,%(%else-then(%_applicationpart%,%(%tolower(%ApplicationPart%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%else-then(%filebase(%File%)%,%
%%ApplicationPart%%
%)%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%%(%
%%include(%Include_path%/Application-file-html.t)%%
%)%)%