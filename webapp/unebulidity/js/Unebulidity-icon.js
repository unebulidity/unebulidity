/*
**********************************************************************
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
**   File: Unebulidity-icon.js
** 
** Author: $author$           
**   Date: 12/6/2022
**********************************************************************
** Application=Unebulidity-icon
*/

/*
**
** function includeHTML
** 
*/
function includeHTML(elementId, fileAttribute, notFound, requestFailed) {

    if (!elementId) { elementId = 'include'; }
    if (!fileAttribute) { fileAttribute = 'include'; }
    if (!notFound) { notFound = ''; }
    if (!requestFailed) { notFound = ''; }

    if (elementId) {
        var element = document.getElementById(elementId);

        if (element) {
            var file = element.getAttribute(fileAttribute);

            if (file) {
                var xhttp = new XMLHttpRequest();

                xhttp.onreadystatechange = function() {
                    if (this.readyState == 4) {
                        if (this.status == 200) { element.innerHTML = this.responseText; }
                        else {
                            if (this.status == 404) { element.innerHTML = notFound; }
                            else {
                                element.innerHTML = requestFailed;
                            }
                        }
                    }
                }
                xhttp.open('GET', file, true);
                xhttp.send();
            }
        }
    }
}

/*
**
** function onClickLocation
** 
*/
function onClickLocation(event, location) { 
    if (event.stopPropagation) {
        event.stopPropagation();
    } else {
        if (window.event) {
            window.event.cancelBubble = true;
        }
    }
    if (location) {
        window.location = location;
    }
}
var thisParentLocation = false, thisSelfLocation = false;
function onLocationInit(parentLocation, selfLocation) {
    thisParentLocation = parentLocation;
    thisSelfLocation = selfLocation;
}
function onClickParentLocation(event, location) {
    if (thisParentLocation) { location = thisParentLocation; }
    onClickLocation(event, location);
}
function onClickSelfLocation(event, location) {
    if (thisSelfLocation) { location = thisSelfLocation; }
    onClickLocation(event, location);
}

/*
**
** function onPopdownClick
** 
*/
var thisPopdown = false, initPopdown = false;
function onPopdownInit(popdown) {
    thisPopdown = popdown;
    initPopdown = true;
}
function onPopdownClick(popdown, event) {
    if (!popdown) { popdown = "myPopdown"; }
    if (popdown) {
        var x = document.getElementById(popdown);
        if (x) {
            thisPopdown = popdown;
            if (x.style.display !== "block") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
    }
    if (event) {
        if (event.stopPropagation) {
            event.stopPropagation();
        } else {
            if (window.event) {
                window.event.cancelBubble = true;
            }
        }
    }
}
function myPopdownClick(popdown, event) {
    if (!popdown) { popdown = "myPopdown"; }
    onPopdownClick(popdown, event);
}
function onWindowPopdownClick(event) {
    if ((!event.target.matches('.popdown')) 
        && (!event.target.matches('.popdown-button')) 
        && (!event.target.matches('.popdown-dots')) 
        && (!event.target.matches('.popdown-dot'))
        && (!event.target.matches('.popdown-content'))
        && (!event.target.matches('.popdown-item'))
        && (thisPopdown)) {
        var x = document.getElementById(thisPopdown);
        if (x) {
            if (x.style.display === "block") {
                x.style.display = "none";
            } else {
                if (initPopdown) { 
                    x.style.display = "block"; 
                }
            }
        }
    }
}

/*
**
** function onDropdownClick
** 
*/
var thisDropdown = false, initDropdown = false;
function onDropdownInit(dropdown) {
    thisDropdown = dropdown;
    initDropdown = true;
}
function onDropdownClick(dropdown, event) {
    if (!dropdown) { dropdown = "myDropdown"; }
    if (dropdown) {
        var x = document.getElementById(dropdown);
        if (x) {
            thisDropdown = dropdown;
            if (x.style.display !== "block") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
    }
    if (event) {
        if (event.stopPropagation) {
            event.stopPropagation();
        } else {
            if (window.event) {
                window.event.cancelBubble = true;
            }
        }
    }
}
function myDropdownClick(dropdown, event) {
    if (!dropdown) { dropdown = "myDropdown"; }
    onDropdownClick(dropdown, event);
}
function onWindowDropdownClick(event) {
    if ((!event.target.matches('.dropdown')) 
        && (!event.target.matches('.dropdown-button')) 
        && (!event.target.matches('.dropdown-bars')) 
        && (!event.target.matches('.dropdown-bar'))
        && (!event.target.matches('.dropdown-content'))
        && (!event.target.matches('.dropdown-item'))
        && (thisDropdown)) {
        var x = document.getElementById(thisDropdown);
        if (x.style.display === "block") {
            x.style.display = "none";
        } else {
            if (initDropdown) { 
                x.style.display = "block"; 
            }
        }
    }
}

/*
**
** function onItemClick
** 
*/
function onItemClick(event, dropdown) {
    if (!dropdown) { dropdown = "myDropdown"; }
    if (dropdown) {
        var x = document.getElementById(dropdown);
        if (x) {
            if (x.style.display === "block") {
                x.style.display = "none";
            }
        }
    }
    if (event) {
        var element = event.target;
        if (element) {
            var location = element.getAttribute('location');
            if (location) {
                onClickLocation(event, location);
            }
        }
    }
}

/*
**
** window.onclick = function
** 
*/
window.onclick = function(event) {
    onWindowPopdownClick(event);
    onWindowDropdownClick(event);
    onWindowDropoverClick(event);
}
