---
---


function refreshFeatures() {

//  ------------------------------------------------ PPA Add scripts ------------------------------------------------///
var PPA = "";
{% capture posts %}
{% for post in site.posts %}

if (document.getElementById("{{ post.name }}")) PPA += !document.getElementById("{{ post.name }}").checked ? '' : '{{ post.ppa }}\n' ;

{% if forloop.last %}{% else %}{% endif %}
{% endfor %}

{% endcapture %}
{{posts | strip_newlines}}


PPA = PPA.substring(0, PPA.length - 1);

//  ------------------------------------------------ // Install scripts //------------------------------------------------///

var INSTALL = "";

{% capture posts %}
{% for post in site.posts %}

if (document.getElementById("{{ post.name }}")) INSTALL += !document.getElementById("{{ post.name }}").checked ? '' : '{{ post.install }}\n' ;


{% if forloop.last %}{% else %}{% endif %}
{% endfor %}

{% endcapture %}
{{posts | strip_newlines}}



// Show Install scripts
var packagelist = "";

packagelist +="################################################################################" + "\n" +"######** Use this Package List with Cleanstart shell Script to install **#######"+ "\n" + "################################################################################" + "\n" + PPA + "\n" + INSTALL;

$('#editor').html( packagelist );


};	

