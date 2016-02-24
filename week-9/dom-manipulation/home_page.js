// DOM Manipulation Challenge

// I worked on this challenge with:  Bobby Reith.

// Add your JavaScript calls to this page:

// Release 0:

// Release 1:
document.getElementById("release-0").addClass = "done";

// Release 2:
document.getElementById("release-1").style.display = "none";

// Release 3:
document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";

// Release 4:
document.getElementById("release-3").style.backgroundColor = "#955251";

// Release 5:
var size = document.getElementsByClassName("release-4");
 for(i=0;i<size.length;i++){
   size[i].style.fontSize = "2em";
 }
 
// Release 6:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));


// Reflection:
// What did you learn about the DOM?
// DOM is an interface with HTNL (XMLtoo). 
// It is not a programing language but uses one, for example, JavaScript
// It is implemented differently depending on the browser used. 
// It helps with keeping the website interactive (not static).
// It is not easy to understand how to make it work. The reading did not help much.
// This exercise helped a bit but when we look at the page source of websites, 
// it is much more complicated than that and I am having difficulty understanding it.

// What are some useful methods to use to manipulate the DOM?
// document.getElementById
// document.getElementsByClassName
// appendChild(tmpl.content.cloneNode(true)
// document.getElementsByTagName("h1")

