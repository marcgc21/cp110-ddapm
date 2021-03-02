self.addEventListener('install',(event)=>{
  console.log("Install")
  event.waitUntil(
    caches.open('cache').then(cache=>{
      return cache.addAll([
        '/',
        '/index.html'
      ])
    })
  )
})
self.addEventListener('fetch',(event)=>{
  console.log("Fetch:" + event.request.url)
  event.respondWith(
    caches.match(event.request).then(response=>{
      return response || fetch(event.request)
    })
  )
})
