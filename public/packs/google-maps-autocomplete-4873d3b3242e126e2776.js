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
/******/ 	return __webpack_require__(__webpack_require__.s = 0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/*!**********************************************************!*\
  !*** ./app/javascript/packs/google-maps-autocomplete.js ***!
  \**********************************************************/
/*! dynamic exports provided */
/*! all exports used */
/***/ (function(module, exports) {

eval("function onPlaceChanged() {\n  var place = this.getPlace();\n  var components = getAddressComponents(place);\n\n  var profilAddress = document.getElementById('profil_address');\n  profilAddress.blur();\n  profilAddress.value = components.address;\n\n  document.getElementById('profil_city').value = components.city;\n\n  if (components.country_code) {\n    var selector = '#profil_country option[value=\"' + components.country_code + '\"]';\n    document.querySelector(selector).selected = true;\n  }\n}\n\nfunction getAddressComponents(place) {\n  // If you want lat/lng, you can look at:\n  // - place.geometry.location.lat()\n  // - place.geometry.location.lng()\n\n  if (window.console && typeof console.log === \"function\") {\n    console.log(place);\n  }\n\n  var street_number = null;\n  var route = null;\n  var zip_code = null;\n  var city = null;\n  var country_code = null;\n  for (var i in place.address_components) {\n    var component = place.address_components[i];\n    for (var j in component.types) {\n      var type = component.types[j];\n      if (type === 'street_number') {\n        street_number = component.long_name;\n      } else if (type === 'route') {\n        route = component.long_name;\n      } else if (type === 'postal_code') {\n        zip_code = component.long_name;\n      } else if (type === 'locality') {\n        city = component.long_name;\n      } else if (type === 'postal_town' && city === null) {\n        city = component.long_name;\n      } else if (type === 'country') {\n        country_code = component.short_name;\n      }\n    }\n  }\n\n  return {\n    address: street_number === null ? route : street_number + ' ' + route,\n    zip_code: zip_code,\n    city: city,\n    country_code: country_code\n  };\n}\n\ndocument.addEventListener(\"DOMContentLoaded\", function () {\n  var profilAddress = document.getElementById('profil_address');\n\n  if (profilAddress) {\n\n    var autocomplete = new google.maps.places.Autocomplete(profilAddress, { types: ['geocode'] });\n    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);\n    google.maps.event.addDomListener(profilAddress, 'keydown', function (e) {\n      if (e.key === \"Enter\") {\n        e.preventDefault(); // Do not submit the form on Enter.\n      }\n    });\n  }\n});//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiMC5qcyIsInNvdXJjZXMiOlsid2VicGFjazovLy8uL2FwcC9qYXZhc2NyaXB0L3BhY2tzL2dvb2dsZS1tYXBzLWF1dG9jb21wbGV0ZS5qcz8xZWJmIl0sInNvdXJjZXNDb250ZW50IjpbImZ1bmN0aW9uIG9uUGxhY2VDaGFuZ2VkKCkge1xuICB2YXIgcGxhY2UgPSB0aGlzLmdldFBsYWNlKCk7XG4gIHZhciBjb21wb25lbnRzID0gZ2V0QWRkcmVzc0NvbXBvbmVudHMocGxhY2UpO1xuXG4gIHZhciBwcm9maWxBZGRyZXNzID0gZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoJ3Byb2ZpbF9hZGRyZXNzJyk7XG4gIHByb2ZpbEFkZHJlc3MuYmx1cigpO1xuICBwcm9maWxBZGRyZXNzLnZhbHVlID0gY29tcG9uZW50cy5hZGRyZXNzO1xuXG4gIGRvY3VtZW50LmdldEVsZW1lbnRCeUlkKCdwcm9maWxfY2l0eScpLnZhbHVlID0gY29tcG9uZW50cy5jaXR5O1xuXG4gIGlmIChjb21wb25lbnRzLmNvdW50cnlfY29kZSkge1xuICAgIHZhciBzZWxlY3RvciA9ICcjcHJvZmlsX2NvdW50cnkgb3B0aW9uW3ZhbHVlPVwiJyArIGNvbXBvbmVudHMuY291bnRyeV9jb2RlICsgJ1wiXSc7XG4gICAgZG9jdW1lbnQucXVlcnlTZWxlY3RvcihzZWxlY3Rvcikuc2VsZWN0ZWQgPSB0cnVlO1xuICB9XG59XG5cbmZ1bmN0aW9uIGdldEFkZHJlc3NDb21wb25lbnRzKHBsYWNlKSB7XG4gIC8vIElmIHlvdSB3YW50IGxhdC9sbmcsIHlvdSBjYW4gbG9vayBhdDpcbiAgLy8gLSBwbGFjZS5nZW9tZXRyeS5sb2NhdGlvbi5sYXQoKVxuICAvLyAtIHBsYWNlLmdlb21ldHJ5LmxvY2F0aW9uLmxuZygpXG5cbiAgaWYgKHdpbmRvdy5jb25zb2xlICYmIHR5cGVvZiBjb25zb2xlLmxvZyA9PT0gXCJmdW5jdGlvblwiKSB7XG4gICAgY29uc29sZS5sb2cocGxhY2UpO1xuICB9XG5cbiAgdmFyIHN0cmVldF9udW1iZXIgPSBudWxsO1xuICB2YXIgcm91dGUgPSBudWxsO1xuICB2YXIgemlwX2NvZGUgPSBudWxsO1xuICB2YXIgY2l0eSA9IG51bGw7XG4gIHZhciBjb3VudHJ5X2NvZGUgPSBudWxsO1xuICBmb3IgKHZhciBpIGluIHBsYWNlLmFkZHJlc3NfY29tcG9uZW50cykge1xuICAgIHZhciBjb21wb25lbnQgPSBwbGFjZS5hZGRyZXNzX2NvbXBvbmVudHNbaV07XG4gICAgZm9yICh2YXIgaiBpbiBjb21wb25lbnQudHlwZXMpIHtcbiAgICAgIHZhciB0eXBlID0gY29tcG9uZW50LnR5cGVzW2pdO1xuICAgICAgaWYgKHR5cGUgPT09ICdzdHJlZXRfbnVtYmVyJykge1xuICAgICAgICBzdHJlZXRfbnVtYmVyID0gY29tcG9uZW50LmxvbmdfbmFtZTtcbiAgICAgIH0gZWxzZSBpZiAodHlwZSA9PT0gJ3JvdXRlJykge1xuICAgICAgICByb3V0ZSA9IGNvbXBvbmVudC5sb25nX25hbWU7XG4gICAgICB9IGVsc2UgaWYgKHR5cGUgPT09ICdwb3N0YWxfY29kZScpIHtcbiAgICAgICAgemlwX2NvZGUgPSBjb21wb25lbnQubG9uZ19uYW1lO1xuICAgICAgfSBlbHNlIGlmICh0eXBlID09PSAnbG9jYWxpdHknKSB7XG4gICAgICAgIGNpdHkgPSBjb21wb25lbnQubG9uZ19uYW1lO1xuICAgICAgfSBlbHNlIGlmICh0eXBlID09PSAncG9zdGFsX3Rvd24nICYmIGNpdHkgPT09IG51bGwpIHtcbiAgICAgICAgY2l0eSA9IGNvbXBvbmVudC5sb25nX25hbWU7XG4gICAgICB9IGVsc2UgaWYgKHR5cGUgPT09ICdjb3VudHJ5Jykge1xuICAgICAgICBjb3VudHJ5X2NvZGUgPSBjb21wb25lbnQuc2hvcnRfbmFtZTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICByZXR1cm4ge1xuICAgIGFkZHJlc3M6IHN0cmVldF9udW1iZXIgPT09IG51bGwgPyByb3V0ZSA6IHN0cmVldF9udW1iZXIgKyAnICcgKyByb3V0ZSxcbiAgICB6aXBfY29kZTogemlwX2NvZGUsXG4gICAgY2l0eTogY2l0eSxcbiAgICBjb3VudHJ5X2NvZGU6IGNvdW50cnlfY29kZVxuICB9O1xufVxuXG5kb2N1bWVudC5hZGRFdmVudExpc3RlbmVyKFwiRE9NQ29udGVudExvYWRlZFwiLCBmdW5jdGlvbiAoKSB7XG4gIHZhciBwcm9maWxBZGRyZXNzID0gZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoJ3Byb2ZpbF9hZGRyZXNzJyk7XG5cbiAgaWYgKHByb2ZpbEFkZHJlc3MpIHtcblxuICAgIHZhciBhdXRvY29tcGxldGUgPSBuZXcgZ29vZ2xlLm1hcHMucGxhY2VzLkF1dG9jb21wbGV0ZShwcm9maWxBZGRyZXNzLCB7IHR5cGVzOiBbJ2dlb2NvZGUnXSB9KTtcbiAgICBnb29nbGUubWFwcy5ldmVudC5hZGRMaXN0ZW5lcihhdXRvY29tcGxldGUsICdwbGFjZV9jaGFuZ2VkJywgb25QbGFjZUNoYW5nZWQpO1xuICAgIGdvb2dsZS5tYXBzLmV2ZW50LmFkZERvbUxpc3RlbmVyKHByb2ZpbEFkZHJlc3MsICdrZXlkb3duJywgZnVuY3Rpb24gKGUpIHtcbiAgICAgIGlmIChlLmtleSA9PT0gXCJFbnRlclwiKSB7XG4gICAgICAgIGUucHJldmVudERlZmF1bHQoKTsgLy8gRG8gbm90IHN1Ym1pdCB0aGUgZm9ybSBvbiBFbnRlci5cbiAgICAgIH1cbiAgICB9KTtcbiAgfVxufSk7XG5cblxuLy8vLy8vLy8vLy8vLy8vLy8vXG4vLyBXRUJQQUNLIEZPT1RFUlxuLy8gLi9hcHAvamF2YXNjcmlwdC9wYWNrcy9nb29nbGUtbWFwcy1hdXRvY29tcGxldGUuanNcbi8vIG1vZHVsZSBpZCA9IDBcbi8vIG1vZHVsZSBjaHVua3MgPSAwIDMiXSwibWFwcGluZ3MiOiJBQUFBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSIsInNvdXJjZVJvb3QiOiIifQ==\n//# sourceURL=webpack-internal:///0\n");

/***/ })
/******/ ]);