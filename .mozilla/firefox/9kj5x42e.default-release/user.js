// Disable Telemetry
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.unified", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);

// Disable Pocket
user_pref("extensions.pocket.enabled", false);

// Block third-party cookies
user_pref("network.cookie.cookieBehavior", 1);

// Disable prefetching
user_pref("network.prefetch-next", false);

// Disable WebRTC (prevents IP leak)
user_pref("media.peerconnection.enabled", false);

// Enable HTTPS-Only Mode
user_pref("dom.security.https_only_mode", true);

// Enable Enhanced Tracking Protection
user_pref("privacy.trackingprotection.enabled", true);
user_pref("privacy.trackingprotection.socialtracking.enabled", true);
user_pref("privacy.trackingprotection.cryptomining.enabled", true);
user_pref("privacy.trackingprotection.fingerprinting.enabled", true);

// Disable location services
user_pref("geo.enabled", false);

// Enable dark mode
user_pref("ui.systemUsesDarkTheme", 1);

// Disable Firefox studies
user_pref("app.shield.optoutstudies.enabled", false);

// Disable accessibility services
user_pref("accessibility.force_disabled", 1);

// Disable form autofill
user_pref("browser.formfill.enable", false);

// Disable pocket
user_pref("extensions.pocket.enabled", false);

// Disable autoplay
user_pref("media.autoplay.default", 5);



