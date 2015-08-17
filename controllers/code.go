package controllers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"paste/models"
	"strconv"
)

type CodeController struct {
	beego.Controller
}

func (this *CodeController) Get() {
	id, err :=  strconv.ParseInt(this.Ctx.Input.Param(":id"), 10, 64)
	if(err == nil) {
		o := orm.NewOrm();

		paste := models.Paste{Id: int(id)}
		err := o.Read(&paste)

		if(err == nil) {
			this.Data["Language"] = paste.Language
			this.Data["Code"] = paste.Code
		} else {
			this.Redirect("http://localhost/", 301)
		}

		this.Data["pageTitle"] = "Paste #" + this.Ctx.Input.Param(":id");
		this.TplNames = "code.tpl"
		this.Layout = "layout.tpl"
	} else {
		this.Redirect("http://localhost/", 301)
	}
}