package co.com.seguridog

class K9UserController {

    def scaffold = K9User

    def index() {}

    def login = {

    }

    def authenticate = {
        def user = K9User.findByLoginUserAndLoginPass(params.loginUser, params.loginPass)
        if ( user && user.enableUser ) {
            session.user = user
            flash.message = "${session.user.fullName}"
            if (user.typeUsers == 1) {
                redirect(controller: "K9Admin", action: "index")
            } else if (user.typeUsers == 2) {
                redirect(controller: "K9Instructor", action: "index")
            } else if (user.typeUsers == 3) {
                redirect(controller: "K9Veterinarian", action: "index")
            } else if (user.typeUsers == 4) {
                redirect(controller: "K9Handler", action: "index")
            } else {
                redirect(action: "login")
            }
        } else {
            flash.message = "Lo sentimos, usuario y/o password incorrecto(s). Intenta nuevamente."
            redirect(action: "login")
            return
        }
    }

    def logout = {
        session.invalidate()
        redirect(controller: "K9User", action: "login")
    }

    def collaborators () {}

    def information () {}
}