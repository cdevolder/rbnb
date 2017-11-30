/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 1);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */,
/* 1 */
/*!***********************************************************!*\
  !*** ./app/javascript/packs/google-maps-autocomplete1.js ***!
  \***********************************************************/
/*! dynamic exports provided */
/*! all exports used */
/***/ (function(module, exports) {

eval("function onPlaceChanged() {\n  var place = this.getPlace();\n  var components = getAddressComponents(place);\n\n  var profilAddress = document.getElementById('profil_address');\n  profilAddress.blur();\n  profilAddress.value = components.address;\n\n  document.getElementById('profil_city').value = components.city;\n\n  if (components.country_code) {\n    var selector = '#profil_country option[value=\"' + components.country_code + '\"]';\n    document.querySelector(selector).selected = true;\n  }\n}\n\nfunction getAddressComponents(place) {\n  // If you want lat/lng, you can look at:\n  // - place.geometry.location.lat()\n  // - place.geometry.location.lng()\n\n  if (window.console && typeof console.log === \"function\") {\n    console.log(place);\n  }\n\n  var street_number = null;\n  var route = null;\n  var zip_code = null;\n  var city = null;\n  var country_code = null;\n  for (var i in place.address_components) {\n    var component = place.address_components[i];\n    for (var j in component.types) {\n      var type = component.types[j];\n      if (type === 'street_number') {\n        street_number = component.long_name;\n      } else if (type === 'route') {\n        route = component.long_name;\n      } else if (type === 'postal_code') {\n        zip_code = component.long_name;\n      } else if (type === 'locality') {\n        city = component.long_name;\n      } else if (type === 'postal_town' && city === null) {\n        city = component.long_name;\n      } else if (type === 'country') {\n        country_code = component.short_name;\n      }\n    }\n  }\n\n  return {\n    address: street_number === null ? route : street_number + ' ' + route,\n    zip_code: zip_code,\n    city: city,\n    country_code: country_code\n  };\n}\n\ndocument.addEventListener(\"DOMContentLoaded\", function () {\n  var profilAddress = document.getElementById('profil_address');\n\n  if (profilAddress) {\n    var autocomplete = new google.maps.places.Autocomplete(profilAddress, { types: ['geocode'] });\n    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);\n    google.maps.event.addDomListener(profilAddress, 'keydown', function (e) {\n      if (e.key === \"Enter\") {\n        e.preventDefault(); // Do not submit the form on Enter.\n      }\n    });\n  }\n});//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiMS5qcyIsInNvdXJjZXMiOlsid2VicGFjazovLy8uL2FwcC9qYXZhc2NyaXB0L3BhY2tzL2dvb2dsZS1tYXBzLWF1dG9jb21wbGV0ZTEuanM/NTIxNSJdLCJzb3VyY2VzQ29udGVudCI6WyJmdW5jdGlvbiBvblBsYWNlQ2hhbmdlZCgpIHtcbiAgdmFyIHBsYWNlID0gdGhpcy5nZXRQbGFjZSgpO1xuICB2YXIgY29tcG9uZW50cyA9IGdldEFkZHJlc3NDb21wb25lbnRzKHBsYWNlKTtcblxuICB2YXIgcHJvZmlsQWRkcmVzcyA9IGRvY3VtZW50LmdldEVsZW1lbnRCeUlkKCdwcm9maWxfYWRkcmVzcycpO1xuICBwcm9maWxBZGRyZXNzLmJsdXIoKTtcbiAgcHJvZmlsQWRkcmVzcy52YWx1ZSA9IGNvbXBvbmVudHMuYWRkcmVzcztcblxuICBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgncHJvZmlsX2NpdHknKS52YWx1ZSA9IGNvbXBvbmVudHMuY2l0eTtcblxuICBpZiAoY29tcG9uZW50cy5jb3VudHJ5X2NvZGUpIHtcbiAgICB2YXIgc2VsZWN0b3IgPSAnI3Byb2ZpbF9jb3VudHJ5IG9wdGlvblt2YWx1ZT1cIicgKyBjb21wb25lbnRzLmNvdW50cnlfY29kZSArICdcIl0nO1xuICAgIGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3Ioc2VsZWN0b3IpLnNlbGVjdGVkID0gdHJ1ZTtcbiAgfVxufVxuXG5mdW5jdGlvbiBnZXRBZGRyZXNzQ29tcG9uZW50cyhwbGFjZSkge1xuICAvLyBJZiB5b3Ugd2FudCBsYXQvbG5nLCB5b3UgY2FuIGxvb2sgYXQ6XG4gIC8vIC0gcGxhY2UuZ2VvbWV0cnkubG9jYXRpb24ubGF0KClcbiAgLy8gLSBwbGFjZS5nZW9tZXRyeS5sb2NhdGlvbi5sbmcoKVxuXG4gIGlmICh3aW5kb3cuY29uc29sZSAmJiB0eXBlb2YgY29uc29sZS5sb2cgPT09IFwiZnVuY3Rpb25cIikge1xuICAgIGNvbnNvbGUubG9nKHBsYWNlKTtcbiAgfVxuXG4gIHZhciBzdHJlZXRfbnVtYmVyID0gbnVsbDtcbiAgdmFyIHJvdXRlID0gbnVsbDtcbiAgdmFyIHppcF9jb2RlID0gbnVsbDtcbiAgdmFyIGNpdHkgPSBudWxsO1xuICB2YXIgY291bnRyeV9jb2RlID0gbnVsbDtcbiAgZm9yICh2YXIgaSBpbiBwbGFjZS5hZGRyZXNzX2NvbXBvbmVudHMpIHtcbiAgICB2YXIgY29tcG9uZW50ID0gcGxhY2UuYWRkcmVzc19jb21wb25lbnRzW2ldO1xuICAgIGZvciAodmFyIGogaW4gY29tcG9uZW50LnR5cGVzKSB7XG4gICAgICB2YXIgdHlwZSA9IGNvbXBvbmVudC50eXBlc1tqXTtcbiAgICAgIGlmICh0eXBlID09PSAnc3RyZWV0X251bWJlcicpIHtcbiAgICAgICAgc3RyZWV0X251bWJlciA9IGNvbXBvbmVudC5sb25nX25hbWU7XG4gICAgICB9IGVsc2UgaWYgKHR5cGUgPT09ICdyb3V0ZScpIHtcbiAgICAgICAgcm91dGUgPSBjb21wb25lbnQubG9uZ19uYW1lO1xuICAgICAgfSBlbHNlIGlmICh0eXBlID09PSAncG9zdGFsX2NvZGUnKSB7XG4gICAgICAgIHppcF9jb2RlID0gY29tcG9uZW50LmxvbmdfbmFtZTtcbiAgICAgIH0gZWxzZSBpZiAodHlwZSA9PT0gJ2xvY2FsaXR5Jykge1xuICAgICAgICBjaXR5ID0gY29tcG9uZW50LmxvbmdfbmFtZTtcbiAgICAgIH0gZWxzZSBpZiAodHlwZSA9PT0gJ3Bvc3RhbF90b3duJyAmJiBjaXR5ID09PSBudWxsKSB7XG4gICAgICAgIGNpdHkgPSBjb21wb25lbnQubG9uZ19uYW1lO1xuICAgICAgfSBlbHNlIGlmICh0eXBlID09PSAnY291bnRyeScpIHtcbiAgICAgICAgY291bnRyeV9jb2RlID0gY29tcG9uZW50LnNob3J0X25hbWU7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgcmV0dXJuIHtcbiAgICBhZGRyZXNzOiBzdHJlZXRfbnVtYmVyID09PSBudWxsID8gcm91dGUgOiBzdHJlZXRfbnVtYmVyICsgJyAnICsgcm91dGUsXG4gICAgemlwX2NvZGU6IHppcF9jb2RlLFxuICAgIGNpdHk6IGNpdHksXG4gICAgY291bnRyeV9jb2RlOiBjb3VudHJ5X2NvZGVcbiAgfTtcbn1cblxuZG9jdW1lbnQuYWRkRXZlbnRMaXN0ZW5lcihcIkRPTUNvbnRlbnRMb2FkZWRcIiwgZnVuY3Rpb24gKCkge1xuICB2YXIgcHJvZmlsQWRkcmVzcyA9IGRvY3VtZW50LmdldEVsZW1lbnRCeUlkKCdwcm9maWxfYWRkcmVzcycpO1xuXG4gIGlmIChwcm9maWxBZGRyZXNzKSB7XG4gICAgdmFyIGF1dG9jb21wbGV0ZSA9IG5ldyBnb29nbGUubWFwcy5wbGFjZXMuQXV0b2NvbXBsZXRlKHByb2ZpbEFkZHJlc3MsIHsgdHlwZXM6IFsnZ2VvY29kZSddIH0pO1xuICAgIGdvb2dsZS5tYXBzLmV2ZW50LmFkZExpc3RlbmVyKGF1dG9jb21wbGV0ZSwgJ3BsYWNlX2NoYW5nZWQnLCBvblBsYWNlQ2hhbmdlZCk7XG4gICAgZ29vZ2xlLm1hcHMuZXZlbnQuYWRkRG9tTGlzdGVuZXIocHJvZmlsQWRkcmVzcywgJ2tleWRvd24nLCBmdW5jdGlvbiAoZSkge1xuICAgICAgaWYgKGUua2V5ID09PSBcIkVudGVyXCIpIHtcbiAgICAgICAgZS5wcmV2ZW50RGVmYXVsdCgpOyAvLyBEbyBub3Qgc3VibWl0IHRoZSBmb3JtIG9uIEVudGVyLlxuICAgICAgfVxuICAgIH0pO1xuICB9XG59KTtcblxuXG4vLy8vLy8vLy8vLy8vLy8vLy9cbi8vIFdFQlBBQ0sgRk9PVEVSXG4vLyAuL2FwcC9qYXZhc2NyaXB0L3BhY2tzL2dvb2dsZS1tYXBzLWF1dG9jb21wbGV0ZTEuanNcbi8vIG1vZHVsZSBpZCA9IDFcbi8vIG1vZHVsZSBjaHVua3MgPSAwIDIiXSwibWFwcGluZ3MiOiJBQUFBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0EiLCJzb3VyY2VSb290IjoiIn0=\n//# sourceURL=webpack-internal:///1\n");

/***/ })
/******/ ]);