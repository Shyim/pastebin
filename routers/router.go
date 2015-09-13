package routers

import (
	"github.com/Shyim/pastebin/controllers"
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/code/:id", &controllers.CodeController{})
}