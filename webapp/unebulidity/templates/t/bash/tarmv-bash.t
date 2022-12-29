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
%#   File: tarmv-bash.t
%#
%# Author: $author$
%#   Date: 12/26/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_repository,%(%else-then(%is_repository%,%(%is_Repository%)%)%)%,%
%repository,%(%else-then(%if-no(%is_repository%,,%(%repository%)%)%,%(%if-no(%is_repository%,,%(%
%%else-then(%include(%Include_path%/../t/Repository.t)%,repository)%%
%)%)%)%)%)%,%
%Repository,%(%else-then(%if-no(%is_repository%,,%(%Repository%)%)%,%(%if-no(%is_repository%,,%(%repository%)%)%)%)%)%,%
%REPOSITORY,%(%else-then(%REPOSITORY%,%(%toupper(%Repository%)%)%)%)%,%
%repository,%(%else-then(%_repository%,%(%tolower(%Repository%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(%
%%else-then(%include(%Include_path%/../t/Framework.t)%,framework)%%
%)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_hostname,%(%else-then(%is_hostname%,%(%is_Hostname%)%)%)%,%
%hostname,%(%else-then(%if-no(%is_hostname%,,%(%hostname%)%)%,%(%if-no(%is_hostname%,,%(%
%%else-then(%include(%Include_path%/../t/Hostname.t)%,hostname)%%
%)%)%)%)%)%,%
%Hostname,%(%else-then(%if-no(%is_hostname%,,%(%Hostname%)%)%,%(%if-no(%is_hostname%,,%(%hostname%)%)%)%)%)%,%
%HOSTNAME,%(%else-then(%HOSTNAME%,%(%toupper(%Hostname%)%)%)%)%,%
%hostname,%(%else-then(%_hostname%,%(%tolower(%Hostname%)%)%)%)%,%
%is_repositoryhostname,%(%else-then(%is_repositoryhostname%,%(%is_RepositoryHostname%)%)%)%,%
%repositoryhostname,%(%else-then(%if-no(%is_repositoryhostname%,,%(%repositoryhostname%)%)%,%(%if-no(%is_repositoryhostname%,,%(%
%%Repository%%then-if(%Hostname%,%(%if(%Repository%,-)%)%)%%
%)%)%)%)%)%,%
%RepositoryHostname,%(%else-then(%if-no(%is_repositoryhostname%,,%(%RepositoryHostname%)%)%,%(%if-no(%is_repositoryhostname%,,%(%repositoryhostname%)%)%)%)%)%,%
%REPOSITORYHOSTNAME,%(%else-then(%REPOSITORYHOSTNAME%,%(%toupper(%RepositoryHostname%)%)%)%)%,%
%repositoryhostname,%(%else-then(%_repositoryhostname%,%(%tolower(%RepositoryHostname%)%)%)%)%,%
%is_tarit,%(%else-then(%is_tarit%,%(%is_Tarit%)%)%)%,%
%tarit,%(%else-then(%if-no(%is_tarit%,,%(%tarit%)%)%,%(%if-no(%is_tarit%,,%(%
%%else-then(%include(%Include_path%/../t/Tarit.t)%,tarit)%%
%)%)%)%)%)%,%
%Tarit,%(%else-then(%if-no(%is_tarit%,,%(%Tarit%)%)%,%(%if-no(%is_tarit%,,%(%tarit%)%)%)%)%)%,%
%TARIT,%(%else-then(%TARIT%,%(%toupper(%Tarit%)%)%)%)%,%
%tarit,%(%else-then(%_tarit%,%(%tolower(%Tarit%)%)%)%)%,%
%is_tarme,%(%else-then(%is_tarme%,%(%is_Tarme%)%)%)%,%
%tarme,%(%else-then(%if-no(%is_tarme%,,%(%tarme%)%)%,%(%if-no(%is_tarme%,,%(%
%%else-then(%include(%Include_path%/../t/Tarme.t)%,tarme)%%
%)%)%)%)%)%,%
%Tarme,%(%else-then(%if-no(%is_tarme%,,%(%Tarme%)%)%,%(%if-no(%is_tarme%,,%(%tarme%)%)%)%)%)%,%
%TARME,%(%else-then(%TARME%,%(%toupper(%Tarme%)%)%)%)%,%
%tarme,%(%else-then(%_tarme%,%(%tolower(%Tarme%)%)%)%)%,%
%is_tarmv,%(%else-then(%is_tarmv%,%(%is_Tarmv%)%)%)%,%
%tarmv,%(%else-then(%if-no(%is_tarmv%,,%(%tarmv%)%)%,%(%if-no(%is_tarmv%,,%(%
%%else-then(%include(%Include_path%/../t/Tarmv.t)%,tarmv)%%
%)%)%)%)%)%,%
%Tarmv,%(%else-then(%if-no(%is_tarmv%,,%(%Tarmv%)%)%,%(%if-no(%is_tarmv%,,%(%tarmv%)%)%)%)%)%,%
%TARMV,%(%else-then(%TARMV%,%(%toupper(%Tarmv%)%)%)%)%,%
%tarmv,%(%else-then(%_tarmv%,%(%tolower(%Tarmv%)%)%)%)%,%
%is_tardir,%(%else-then(%is_tardir%,%(%is_Tardir%)%)%)%,%
%tardir,%(%else-then(%if-no(%is_tardir%,,%(%tardir%)%)%,%(%if-no(%is_tardir%,,%(%
%%else-then(%include(%Include_path%/../t/Tardir.t)%,%(./tar%then-if(%Hostname%,/)%)%)%%
%)%)%)%)%)%,%
%Tardir,%(%else-then(%if-no(%is_tardir%,,%(%Tardir%)%)%,%(%if-no(%is_tardir%,,%(%tardir%)%)%)%)%)%,%
%TARDIR,%(%else-then(%TARDIR%,%(%toupper(%Tardir%)%)%)%)%,%
%tardir,%(%else-then(%_tardir%,%(%tolower(%Tardir%)%)%)%)%,%
%is_tardir2,%(%else-then(%is_tardir2%,%(%is_Tardir2%)%)%)%,%
%tardir2,%(%else-then(%if-no(%is_tardir2%,,%(%tardir2%)%)%,%(%if-no(%is_tardir2%,,%(%
%%else-then(%include(%Include_path%/../t/Tardir2.t)%,%(./tar/$2%then-if(%Hostname%,/)%)%)%%
%)%)%)%)%)%,%
%Tardir2,%(%else-then(%if-no(%is_tardir2%,,%(%Tardir2%)%)%,%(%if-no(%is_tardir2%,,%(%tardir2%)%)%)%)%)%,%
%TARDIR2,%(%else-then(%TARDIR2%,%(%toupper(%Tardir2%)%)%)%)%,%
%tardir2,%(%else-then(%_tardir2%,%(%tolower(%Tardir2%)%)%)%)%,%
%is_title,%(%else-then(%is_title%,%(%is_Title%)%)%)%,%
%title,%(%else-then(%if-no(%is_title%,,%(%title%)%)%,%(%if-no(%is_title%,,%(%
%%Tarmv% utility script for %Repository%%
%)%)%)%)%)%,%
%Title,%(%else-then(%if-no(%is_title%,,%(%Title%)%)%,%(%if-no(%is_title%,,%(%title%)%)%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_title%,%(%tolower(%Title%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%else-then(%filebase(%File%)%,%
%%Tarmv%%
%)%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_extension,%(%else-then(%is_extension%,%(%is_Extension%)%)%)%,%
%extension,%(%else-then(%if-no(%is_extension%,,%(%extension%)%)%,%(%if-no(%is_extension%,,%(%else-then(%fileextension(%File%)%,%
%sh%
%)%)%)%)%)%)%,%
%Extension,%(%else-then(%if-no(%is_extension%,,%(%Extension%)%)%,%(%if-no(%is_extension%,,%(%extension%)%)%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_extension%,%(%tolower(%Extension%)%)%)%)%,%
%is_baseextension,%(%else-then(%is_baseextension%,%(%is_BaseExtension%)%)%)%,%
%baseextension,%(%else-then(%if-no(%is_baseextension%,,%(%baseextension%)%)%,%(%if-no(%is_baseextension%,,%(%
%%Base%%then-if(%Extension%,%(.)%)%%
%)%)%)%)%)%,%
%BaseExtension,%(%else-then(%if-no(%is_baseextension%,,%(%BaseExtension%)%)%,%(%if-no(%is_baseextension%,,%(%baseextension%)%)%)%)%)%,%
%BASEEXTENSION,%(%else-then(%BASEEXTENSION%,%(%toupper(%BaseExtension%)%)%)%)%,%
%baseextension,%(%else-then(%_baseextension%,%(%tolower(%BaseExtension%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-bash.t)%%
%mkdir -p %Tardir%
mkdir -p scripts
cp %Tarme%.sh scripts
cp %Tarmv%.sh scripts
if [ "$1" != "" ]; then
    %Tarit% %Tardir% %RepositoryHostname% scripts
if [ "$1" == "tar" ]; then
    pushd  %Tardir%/..
    %Tarit% . %RepositoryHostname% %Hostname%
    popd
else # [ "$1" == "tar" ]; then
    %Tarmv% $1
fi # [ "$1" == "tar" ]; then
else # [ "$1" != "" ]; then
    %Tarit% %Tardir% %RepositoryHostname% scripts
fi # [ "$1" != "" ]; then
%
%)%)%