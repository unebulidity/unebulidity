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
%#   File: file-html.t
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
%is_organization,%(%else-then(%is_organization%,%(%is_Organization%)%)%)%,%
%organization,%(%else-then(%if-no(%is_organization%,,%(%organization%)%)%,%(%if-no(%is_organization%,,%($organization$)%)%)%)%)%,%
%Organization,%(%else-then(%if-no(%is_organization%,,%(%Organization%)%)%,%(%if-no(%is_organization%,,%(%organization%)%)%)%)%)%,%
%ORGANIZATION,%(%else-then(%ORGANIZATION%,%(%toupper(%Organization%)%)%)%)%,%
%organization,%(%else-then(%_organization%,%(%tolower(%Organization%)%)%)%)%,%
%is_author,%(%else-then(%is_author%,%(%is_Author%)%)%)%,%
%author,%(%else-then(%if-no(%is_author%,,%(%author%)%)%,%(%if-no(%is_author%,,%($author$)%)%)%)%)%,%
%Author,%(%else-then(%if-no(%is_author%,,%(%Author%)%)%,%(%if-no(%is_author%,,%(%author%)%)%)%)%)%,%
%AUTHOR,%(%else-then(%AUTHOR%,%(%toupper(%Author%)%)%)%)%,%
%author,%(%else-then(%_author%,%(%tolower(%Author%)%)%)%)%,%
%is_date,%(%else-then(%is_date%,%(%is_Date%)%)%)%,%
%date,%(%else-then(%if-no(%is_date%,,%(%date%)%)%,%(%if-no(%is_date%,,%(%date()%)%)%)%)%)%,%
%Date,%(%else-then(%if-no(%is_date%,,%(%Date%)%)%,%(%if-no(%is_date%,,%(%date%)%)%)%)%)%,%
%DATE,%(%else-then(%DATE%,%(%toupper(%Date%)%)%)%)%,%
%date,%(%else-then(%_date%,%(%tolower(%Date%)%)%)%)%,%
%is_year,%(%else-then(%is_year%,%(%is_Year%)%)%)%,%
%year,%(%else-then(%if-no(%is_year%,,%(%year%)%)%,%(%if-no(%is_year%,,%(%year()%)%)%)%)%)%,%
%Year,%(%else-then(%if-no(%is_year%,,%(%Year%)%)%,%(%if-no(%is_year%,,%(%year%)%)%)%)%)%,%
%YEAR,%(%else-then(%YEAR%,%(%toupper(%Year%)%)%)%)%,%
%year,%(%else-then(%_year%,%(%tolower(%Year%)%)%)%)%,%
%is_genesis,%(%else-then(%is_genesis%,%(%is_Genesis%)%)%)%,%
%genesis,%(%else-then(%if-no(%is_genesis%,,%(%genesis%)%)%,%(%if-no(%is_genesis%,,%(1988)%)%)%)%)%,%
%Genesis,%(%else-then(%if-no(%is_genesis%,,%(%Genesis%)%)%,%(%if-no(%is_genesis%,,%(%genesis%)%)%)%)%)%,%
%GENESIS,%(%else-then(%GENESIS%,%(%toupper(%Genesis%)%)%)%)%,%
%genesis,%(%else-then(%_genesis%,%(%tolower(%Genesis%)%)%)%)%,%
%is_typeextension,%(%else-then(%is_typeextension%,%(%is_TypeExtension%)%)%)%,%
%typeextension,%(%else-then(%if-no(%is_typeextension%,,%(%typeextension%)%)%,%(%if-no(%is_typeextension%,,%(%
%html%
%)%)%)%)%)%,%
%TypeExtension,%(%else-then(%if-no(%is_typeextension%,,%(%TypeExtension%)%)%,%(%if-no(%is_typeextension%,,%(%typeextension%)%)%)%)%)%,%
%TYPEEXTENSION,%(%else-then(%TYPEEXTENSION%,%(%toupper(%TypeExtension%)%)%)%)%,%
%typeextension,%(%else-then(%_typeextension%,%(%tolower(%TypeExtension%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%else-then(%filebase(%File%)%,%TypeExtension%)%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_extension,%(%else-then(%is_extension%,%(%is_Extension%)%)%)%,%
%extension,%(%else-then(%if-no(%is_extension%,,%(%extension%)%)%,%(%if-no(%is_extension%,,%(%else-then(%fileextension(%File%)%,%TypeExtension%)%)%)%)%)%)%,%
%Extension,%(%else-then(%if-no(%is_extension%,,%(%Extension%)%)%,%(%if-no(%is_extension%,,%(%extension%)%)%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_extension%,%(%tolower(%Extension%)%)%)%)%,%
%is_baseextension,%(%else-then(%is_baseextension%,%(%is_BaseExtension%)%)%)%,%
%baseextension,%(%else-then(%if-no(%is_baseextension%,,%(%baseextension%)%)%,%(%if-no(%is_baseextension%,,%(%Base%%then-if(%Extension%,%(.)%)%)%)%)%)%)%,%
%BaseExtension,%(%else-then(%if-no(%is_baseextension%,,%(%BaseExtension%)%)%,%(%if-no(%is_baseextension%,,%(%baseextension%)%)%)%)%)%,%
%BASEEXTENSION,%(%else-then(%BASEEXTENSION%,%(%toupper(%BaseExtension%)%)%)%)%,%
%baseextension,%(%else-then(%_baseextension%,%(%tolower(%BaseExtension%)%)%)%)%,%
%is_file,%(%else-then(%is_file%,%(%is_File%)%)%)%,%
%file,%(%else-then(%if-no(%is_file%,,%(%file%)%)%,%(%if-no(%is_file%,,%(%Base%)%)%)%)%)%,%
%File,%(%else-then(%if-no(%is_file%,,%(%File%)%)%,%(%if-no(%is_file%,,%(%file%)%)%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_file%,%(%tolower(%File%)%)%)%)%,%
%is_is_xml,%(%else-then(%is_is_xml%,%(%is_is_Xml%)%)%)%,%
%is_xml,%(%else-then(%if-no(%is_is_xml%,,%(%is_xml%)%)%,%(%if-no(%is_is_xml%,,%(is_Xml)%)%)%)%)%,%
%is_Xml,%(%else-then(%if-no(%is_is_xml%,,%(%is_Xml%)%)%,%(%if-no(%is_is_xml%,,%(%is_xml%)%)%)%)%)%,%
%IS_XML,%(%else-then(%IS_XML%,%(%toupper(%is_Xml%)%)%)%)%,%
%is_xml,%(%else-then(%_is_xml%,%(%tolower(%is_Xml%)%)%)%)%,%
%is_xml_version,%(%else-then(%is_xml_version%,%(%is_Xml_version%)%)%)%,%
%xml_version,%(%else-then(%if-no(%is_xml_version%,,%(%xml_version%)%)%,%(%if-no(%is_xml_version%,,%(1.0)%)%)%)%)%,%
%Xml_version,%(%else-then(%if-no(%is_xml_version%,,%(%Xml_version%)%)%,%(%if-no(%is_xml_version%,,%(%xml_version%)%)%)%)%)%,%
%XML_VERSION,%(%else-then(%XML_VERSION%,%(%toupper(%Xml_version%)%)%)%)%,%
%xml_version,%(%else-then(%_xml_version%,%(%tolower(%Xml_version%)%)%)%)%,%
%is_xml_encoding,%(%else-then(%is_xml_encoding%,%(%is_Xml_encoding%)%)%)%,%
%xml_encoding,%(%else-then(%if-no(%is_xml_encoding%,,%(%xml_encoding%)%)%,%(%if-no(%is_xml_encoding%,,%(UTF-8)%)%)%)%)%,%
%Xml_encoding,%(%else-then(%if-no(%is_xml_encoding%,,%(%Xml_encoding%)%)%,%(%if-no(%is_xml_encoding%,,%(%xml_encoding%)%)%)%)%)%,%
%XML_ENCODING,%(%else-then(%XML_ENCODING%,%(%toupper(%Xml_encoding%)%)%)%)%,%
%xml_encoding,%(%else-then(%_xml_encoding%,%(%tolower(%Xml_encoding%)%)%)%)%,%
%%(%
%%if-no(%is_Xml%,,%(<?xml version="%Xml_version%" encoding="%Xml_encoding%"?>
)%)%%
%%if-no(%is_File%,,%(<!--
===========================================================================
=== Copyright (c) %Genesis%-%Year% %Organization%
===
=== This software is provided by the author and contributors ``as is'' 
=== and any express or implied warranties, including, but not limited to, 
=== the implied warranties of merchantability and fitness for a particular 
=== purpose are disclaimed. In no event shall the author or contributors 
=== be liable for any direct, indirect, incidental, special, exemplary, 
=== or consequential damages (including, but not limited to, procurement 
=== of substitute goods or services; loss of use, data, or profits; or 
=== business interruption) however caused and on any theory of liability, 
=== whether in contract, strict liability, or tort (including negligence 
=== or otherwise) arising in any way out of the use of this software, 
=== even if advised of the possibility of such damage.
===
===   File: %BaseExtension%
===
=== Author: %Author%
===   Date: %Date%
===========================================================================
%if-then(%then-if(%Application%,%(=== Application=)%)%,%(%
%%then-if(%Section%,%( Section=)%)%%
%%then-if(%Page%,%( Page=)%)%%
%%then-if(%Part%,%( Part=)%)%
)%)%-->
)%)%%
%)%)%