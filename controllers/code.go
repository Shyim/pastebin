package controllers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"paste/models"
	"fmt"
)

type CodeController struct {
	beego.Controller
}

func (this *CodeController) Get() {
	o := orm.NewOrm();

	paste := models.Paste{Url: this.Ctx.Input.Param(":id")}
	err := o.Read(&paste, "Url")

	if(err == nil) {
		this.Data["Language"] = paste.Language
		this.Data["Code"] = paste.Code
	} else {
		fmt.Println("err : %s\n", err);
		this.Redirect("http://" + beego.AppConfig.String("host"), 301)
	}

	this.Data["pageTitle"] = "Paste #" + this.Ctx.Input.Param(":id");
	this.TplNames = "code.tpl"
	this.Layout = "layout.tpl"
}