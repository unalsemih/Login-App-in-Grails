package loginapp

class UrlMappings {

    static mappings = {
        delete "/$controller/$id(.$format)?"(action:"delete")
        get "/$controller(.$format)?"(action:"index")
        get "/$controller/$id(.$format)?"(action:"show")
        post "/$controller(.$format)?"(action:"save")
        put "/$controller/$id(.$format)?"(action:"update")
        patch "/$controller/$id(.$format)?"(action:"patch")

        "/"(view: '/index')
        "500"(view: '/error')
        "404"(view: '/notFound')
        "/person/login"(controller: 'person',action: 'login')
        "/person/index"(controller: 'person',action: 'index')
        "/person/logout"(controller: 'person',action: 'logout')

    }
}
