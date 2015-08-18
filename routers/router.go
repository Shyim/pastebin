package routers

import (
	"paste/controllers"
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/code/:id", &controllers.CodeController{})
}