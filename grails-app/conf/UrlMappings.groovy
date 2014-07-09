class UrlMappings {

	static mappings = {

        group("/intern") {
            "/shift/$action?/$id?(.$format)?"(controller: 'Shift')
            "/employee/$action?/$id?(.$format)?"(controller: 'Employee')
        }

        group("/employee"){
            "/index/$id?(.$format)?" (redirect:"/intern/employee/index")
            "/create/$id?(.$format)?" (redirect:"/intern/employee/create")
            "/edit/$id?(.$format)?" (redirect:"/intern/employee/edit")
            "/show/$id?(.$format)?" (redirect:"/intern/employee/show")
        }

        group("/shift"){
            "/index/$id?(.$format)?" (redirect:"/intern/shift/index")
            "/create/$id?(.$format)?" (redirect:"/intern/shift/create")
            "/edit/$id?(.$format)?" (redirect:"/intern/shift/edit")
            "/show/$id?(.$format)?" (redirect:"/intern/shift/show")
        }




        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }



        "/"(view:"/index")
        "500"(view:'/error')
	}
}
