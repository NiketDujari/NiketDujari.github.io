'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "b1f349bc7c8cb7397991cf2b26bc6c3c",
"assets/assets/net.mp3": "84f8352873d9d43b92d50ea5d71809b8",
"assets/FontManifest.json": "31dff05e9c5b01c8ed59ab38ce9166cf",
"assets/fonts/Bangers-Regular.ttf": "a82040ecf06139df2f3e653326b3420c",
"assets/fonts/BebasNeue.otf": "51b4a619fab5e1a38643657191a85aa5",
"assets/fonts/Lobster-Regular.ttf": "9406d0ab606cf8cb91c41b65556bd836",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/fonts/PermanentMarker-Regular.ttf": "c863f8028c2505f92540e0ba7c379002",
"assets/images/13reasons.jpeg": "6b71c59d25a894e1ebd3144ef87b74c3",
"assets/images/adi.jpeg": "06618931c0039a93668972f8aebddcac",
"assets/images/aku-wish.jpeg": "7dabba36a879ed6ec7cdfdec72db5ddc",
"assets/images/anwesha.jpeg": "57f3087c5827aeec79562e9deb1a29ff",
"assets/images/back2school.jpeg": "e319f7c3123d1b2f7b63fc1e7b279475",
"assets/images/bald.jpeg": "06f08ed955d4f466b0dfc01cd9c6d5f3",
"assets/images/bday.jpeg": "1914d0033cf5adda6e93b7a106bf2362",
"assets/images/body.jpg": "4629d51462a7e73e44705c49003ba8e2",
"assets/images/chirag.jpeg": "e88ef95a880c695e9b6626239f5946c6",
"assets/images/cover.jpeg": "c4a8189f65f1c81925fee3fa703703e3",
"assets/images/cr6.jpeg": "1d4e8012ca9808ae4a5b95450d072d3e",
"assets/images/cry1.jpeg": "05b2826c6ce7eddb123725f53edd71a4",
"assets/images/cry2.jpeg": "6877821ea428ced255d3afd66bd8f175",
"assets/images/cry3.jpeg": "170f35910fc3cb9a792bfb27cc29c407",
"assets/images/cry4.jpeg": "c49e8b1f2cc8acded1d0cfae7bc1f7fc",
"assets/images/cry5.jpeg": "13ce3c1028691afe155e86dcf3cd8ce6",
"assets/images/cry7.jpeg": "b5c0a04e70c1a53dd7927aea0dd1ce95",
"assets/images/Dog.jpeg": "6e8d117beab087a5a2ce355d7fc91e09",
"assets/images/estee.jpg": "464434c1a4ad68c4b86315ae03a6822c",
"assets/images/eyesnose.jpeg": "b6ee0c10c89207f7e0c596929e1e0d85",
"assets/images/f1.jpeg": "db27e605653c966361d8de9b17913986",
"assets/images/f10.jpeg": "5434e541393d412a2c2e789077b26077",
"assets/images/f11.jpeg": "ed3ea9ebdd59fb552664f8bfeaba967b",
"assets/images/f12.jpeg": "9e5384c917aa3b2e50411f7445083ee1",
"assets/images/f13.jpeg": "52f079093eec6853459f5b0b9ea17a96",
"assets/images/f14.jpeg": "96f3b63a78d7968fa7aa7ecb3a2f0ec1",
"assets/images/f2.jpeg": "670136d033ef0a54bb1bdcc47893b715",
"assets/images/f3.jpeg": "89852098875f71cbba07dc24314b03eb",
"assets/images/f4.jpeg": "d28521038837ea9e043d738b2b9637d3",
"assets/images/f5.jpeg": "7c91157b4d223b8b657722986e787f6a",
"assets/images/f6.jpeg": "28cc54f6553a7fe6d7e0cc713d8da98b",
"assets/images/f7.jpeg": "4ffa4685c89d4bba1575b43f3d85cb9a",
"assets/images/f8.jpeg": "8a0ad735a9ced4fb74e089c33d926c17",
"assets/images/f9.jpeg": "0dd120f5b53cc6d5d549504939902133",
"assets/images/family1.jpeg": "ed762c02926d47892736a492e554fc4c",
"assets/images/family10.jpeg": "62c68023f1637197272f3d09f47b77ed",
"assets/images/family2.jpeg": "e0387809739284042cc4773f4dda4d2f",
"assets/images/family3.jpeg": "261571e8113b569feb6755bb4f1fa549",
"assets/images/family4.jpeg": "b189ff5e0d27f8e6677d1a7415a55381",
"assets/images/family5.jpeg": "15397577e8ea6a7049c9535f3978f18d",
"assets/images/family6.jpeg": "788ef3ae7ce45f7014aee35f51932683",
"assets/images/family7.jpeg": "2ecb6cb3709a6c8e24f4d5e774f6d189",
"assets/images/family8.jpeg": "edd153efffba3fb5579f76aa9aff6d86",
"assets/images/family9.jpeg": "957d0a17ad3b52e46fc0669c8580e828",
"assets/images/farsali.jpg": "a89deb8de2908a1a14a2a09150b73156",
"assets/images/fast.jpeg": "f5357d2638236c6db4321ebd94e0da05",
"assets/images/floral.jpeg": "ea2bb9b172e5b418950a8afb25e6ea24",
"assets/images/formal.jpeg": "8cc31232080963745c35db8f483a21dc",
"assets/images/ghagra.jpeg": "cc2acf1d684bc3556a5b3619b7742e2f",
"assets/images/haldi.jpeg": "58c9c011f0517f021b57dbdd06b3c468",
"assets/images/Horror.jpeg": "7b5f1e33307cc7e18f4342904f658931",
"assets/images/huda.jpg": "b2ed202e15758d17614f66fcb923d0ac",
"assets/images/italian.jpeg": "3017f5b38f861632b18ea7348627a7c6",
"assets/images/kay.webp": "9c8150496d813b736ba99d98162ca986",
"assets/images/lehenga.jpg": "1fb101b711199e6ab2127fd52a398dd0",
"assets/images/mac.jpg": "d0c255990a7612fcf4e2f314a8306cc3",
"assets/images/mihir-wish.jpeg": "4b2dfe99843ca15f66f05bfdc4fa94c1",
"assets/images/muskaan-wish.jpeg": "6d684be10f379343f433230763a6de80",
"assets/images/nik-wish.jpeg": "88867521a337a4dfb2b870cccf8f45eb",
"assets/images/profile.jpeg": "13a4c93c6f5f39953073a9df152afca6",
"assets/images/quarantine.jpeg": "9489d0e7fc2adbdcbf3ebb857c3b459b",
"assets/images/richaunty.jpeg": "a2bbbc085b4f2fd14aebb8a5acecfced",
"assets/images/sanskar-wish.jpeg": "d4b922cfa934dbcd1255de6bf8963f84",
"assets/images/Sanskriti-wish.jpeg": "26cb422492d703a01d98e5b89b688ea3",
"assets/images/saree.jpeg": "f9fe8fedf6dffe3fd9b9b776779be58d",
"assets/images/shradha.jpeg": "b93dff2c939b15f337d5e04769cee38b",
"assets/images/shreyoshee.jpeg": "dbfdc68931b5ad3059162990d87e784c",
"assets/images/shubhangi-wish.jpeg": "31bc0b4b48f2346ea979d57b82532d68",
"assets/images/sidharth.jpeg": "c350bc166b4b439fcaf43bcf20fd21df",
"assets/images/suit.jpeg": "9f7a01157ab05c39c1d4e7444bb75948",
"assets/images/tanya.jpeg": "058de458d3546677cd6b0dc86391fdd6",
"assets/images/vampire.jpeg": "abcd74c7601cd35e653e6c6de6a93bb1",
"assets/images/yoga.jpeg": "9e2fb000713d7e095af52c2e00d021c2",
"assets/NOTICES": "205578542092b4ee77043adc82d35b95",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.css": "5a8d0222407e388155d7d1395a75d5b9",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.html": "16911fcc170c8af1c5457940bd0bf055",
"assets/packages/youtube_player_flutter/assets/speedometer.webp": "50448630e948b5b3998ae5a5d112622b",
"assets/packages/youtube_player_iframe/assets/player.html": "3e1f3fad6eb85b36d87c8cf245306e0e",
"assets/shaders/ink_sparkle.frag": "bb2f09705eebff3cafaaedd9ff45c211",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "ba797d28c2c43231578c6a6344ea30ad",
"/": "ba797d28c2c43231578c6a6344ea30ad",
"main.dart.js": "15736b01866a5b645aa0e4b129f59709",
"manifest.json": "23c9b6083872a65fd78cd0779ca6e9e4",
"version.json": "ec7ae8c2f8a042edca2965bc2800d65f"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
