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
%#   File: file-parameters-t.t
%#
%# Author: $author$
%#   Date: 12/7/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_parameters,%(%else-then(%is_parameters%,%(%is_Parameters%)%)%)%,%
%parameters,%(%else-then(%if-no(%is_parameters%,,%(%parameters%)%)%,%(%if-no(%is_parameters%,,%(%
%%if-no(%is_Include%,%()%,%(Include_path=%%filepath%(()%%%input%%%())%%%;)%)%%
%Organization=$organization$;Author=$author$;Date=%%date%(()%%())%%%;Year=%%year%(()%%())%%%;Genesis=1988;%
%TypeExtension%then-if(%TypeExtension%,=)%;Base=%%else-then%(()%%%filebase%(()%%%File%%%())%%%%(,)%%%TypeExtension%%%())%%%;%
%Extension=%%else-then%(()%%%fileextension%(()%%%File%%%())%%%%(,)%%%TypeExtension%%%())%%%;%
%BaseExtension=%%Base%%%%then-if%(()%%%Extension%%%(,)%%%%(()%.%())%%%%())%%%;File=%%Base%%%
%)%)%)%)%)%,%
%Parameters,%(%else-then(%if-no(%is_parameters%,,%(%Parameters%)%)%,%(%if-no(%is_parameters%,,%(%parameters%)%)%)%)%)%,%
%PARAMETERS,%(%else-then(%PARAMETERS%,%(%toupper(%Parameters%)%)%)%)%,%
%parameters,%(%else-then(%_parameters%,%(%tolower(%Parameters%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-t.t)%%
%%%with%(()%%%
%
%%include(%Include_path%/parameters-t.t)%%
%%%%%%(()%%%%
%%if(%if-no(%is_Include%,,%(%Include%)%)%,%(
%%%%include%(()%%%Include_path%%%then-if(%Include%,/)%%())%%%%%)%)%
%%%())%%%%())%%%%
%)%)%