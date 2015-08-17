package routers

import (
	"paste/controllers"
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/code/:id([0-9]+)", &controllers.CodeController{})
}
