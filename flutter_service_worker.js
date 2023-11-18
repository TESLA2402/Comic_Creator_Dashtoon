'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"favicon.png": "cc70d929c58462d3fb2a7ed385846fee",
"icons/apple-icon-144x144.png": "450ce3165d71c272a1909463cd8d9d43",
"icons/Icon-192.png": "d46aaa07cd2f83713e56bd5b5c4155f9",
"icons/apple-icon-152x152.png": "2e86c676198d73f08630ca75506c3df3",
"icons/apple-icon-114x114.png": "080190ecd679718e02cd45d1542c0a11",
"icons/ms-icon-70x70.png": "04aff3645435c98027ba921abe03b179",
"icons/android-icon-144x144.png": "450ce3165d71c272a1909463cd8d9d43",
"icons/favicon-16x16.png": "cc70d929c58462d3fb2a7ed385846fee",
"icons/android-icon-192x192.png": "d502687b4008d17cc4353e948af00979",
"icons/apple-icon-57x57.png": "75b9adde9bf8cc4f8c015054c7fe1489",
"icons/android-icon-96x96.png": "a71492cfd9e38ffa1faed7f04626e5fa",
"icons/android-icon-48x48.png": "718643e2a7b439e364301db423f991ce",
"icons/apple-icon-180x180.png": "c5317f01730dd5e08b997d113ad53ab0",
"icons/favicon.ico": "dcd0911e5569cf630a6c8998e7f976d6",
"icons/favicon-96x96.png": "a71492cfd9e38ffa1faed7f04626e5fa",
"icons/favicon-32x32.png": "23db4d1c878f26759133e2510d4e17c9",
"icons/ms-icon-144x144.png": "450ce3165d71c272a1909463cd8d9d43",
"icons/android-icon-72x72.png": "72bae8dbadab79336b762448540a546c",
"icons/apple-icon-60x60.png": "1ee5a14dfb17c0f13f7baf197fddf422",
"icons/ms-icon-150x150.png": "ded0887a7f1b614ddc694d1946b0409d",
"icons/apple-icon.png": "ca93569691b11d106fd64e862e647ff4",
"icons/Icon-maskable-192.png": "182937e805d414fd31b89a9a4a2f9116",
"icons/Icon-512.png": "474d47981d9dc9922673502576d6bd0d",
"icons/browserconfig.xml": "653d077300a12f09a69caeea7a8947f8",
"icons/manifest.json": "b58fcfa7628c9205cb11a1b2c3e8f99a",
"icons/apple-icon-120x120.png": "d133413cb8e2bfa08c587142c6e99719",
"icons/apple-icon-precomposed.png": "ca93569691b11d106fd64e862e647ff4",
"icons/android-icon-36x36.png": "ed42e039e992dfa3af0a4bbb2d0aa81f",
"icons/ms-icon-310x310.png": "ee47d59857ea97dd4ce3a3dd589d817c",
"icons/apple-icon-72x72.png": "72bae8dbadab79336b762448540a546c",
"icons/apple-icon-76x76.png": "14a7d21d3a99531c3139987f38914499",
"icons/Icon-maskable-512.png": "474d47981d9dc9922673502576d6bd0d",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/AssetManifest.bin": "373234d664ffe656d0fb4039a86ad513",
"assets/AssetManifest.bin.json": "4446c963dde6091a6b6de4cb1ae02947",
"assets/AssetManifest.json": "801125fca546f506babac9af4ec061ba",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "a5d7457fda15b7622c14f432ba63039a",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "f25e8e701660fb45e2a81ff3f43c6d5c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "b72c617acdf2227c8b1413215f620711",
"assets/fonts/MaterialIcons-Regular.otf": "32fce58e2acb9c420eab0fe7b828b761",
"assets/NOTICES": "0446b0587288d62e578d83fe0c8a9346",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"index.html": "a917dbfc0d0aed2bb360cb5bc7ece59a",
"/": "a917dbfc0d0aed2bb360cb5bc7ece59a",
"main.dart.js": "53d78927b8a73e116e8cd4b16cb99ce4",
"manifest.json": "3d865bce1a88167e9d399dfbc2f39f0c",
"version.json": "53cedaa5ebcec0951dacd19c8b43f3cf",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/chromium/canvaskit.wasm": "f87e541501c96012c252942b6b75d1ea",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/canvaskit.wasm": "64edb91684bdb3b879812ba2e48dd487",
"canvaskit/skwasm.wasm": "4124c42a73efa7eb886d3400a1ed7a06",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
