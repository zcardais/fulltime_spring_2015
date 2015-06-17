(function() {
  var BRAND_NAME, DEFAULT_API_URL, DEFAULT_SERVER_URL;

  if (document.location.hostname.split('.')[1]) {
    BRAND_NAME = document.location.hostname.split('.')[1];
  } else {
    BRAND_NAME = 'getsidekick';
  }

  DEFAULT_API_URL = "https://api." + BRAND_NAME + ".com";

  DEFAULT_SERVER_URL = "https://app." + BRAND_NAME + ".com";

  window.api_base = DEFAULT_API_URL;

  window.server_base = DEFAULT_SERVER_URL;

}).call(this);
