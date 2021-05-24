/* Matomo */
var _paq = window._paq = window._paq || [];
/* Tracker methods like "setCustomDimension" should be called before "trackPageView" */
/* Track multiple sub-domains in the same website */
_paq.push(["setDocumentTitle", document.domain + "/" + document.title]);
/* Share the tracking cookie across subdomains */
_paq.push(["setCookieDomain", "*.tesselle.org"]);
/* Tell Matomo the website domain so that clicks on these domains are not tracked as 'Outlinks' */
_paq.push(["setDomains", ["*.tesselle.org"]]);
/* Enable Download & Outlink tracking */
_paq.push(['enableLinkTracking']);
/* Accurately measure the time spent in the visit */
_paq.push(['enableHeartBeatTimer']);
/* Require user cookie consent before storing and using any cookies */
_paq.push(['requireCookieConsent']);
_paq.push(["setDoNotTrack", true]);
_paq.push(['trackPageView']);
(function() {
  var u="https://analyseweb.huma-num.fr/";
  _paq.push(['setTrackerUrl', u+'matomo.php']);
  _paq.push(['setSiteId', '332']);
  var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
  g.type='text/javascript'; g.async=true; g.src=u+'matomo.js'; s.parentNode.insertBefore(g,s);
})();
/* End Matomo Code */
