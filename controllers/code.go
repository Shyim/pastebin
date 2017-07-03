package controllers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"github.com/shyim/pastebin/models"
	"fmt"
	"strconv"
	"time"
)

type CodeController struct {
	beego.Controller
}

func (this *CodeController) Get() {
	o := orm.NewOrm()

	paste := models.Paste{Url: this.Ctx.Input.Param(":id")}
	err := o.Read(&paste, "Url")

	if(err == nil) {
		// If Expiration is set
		if(paste.Expiration != 0) {
			if(paste.Timestamp + paste.Expiration < int(time.Now().Unix())) {
				this.Redirect("http://" + beego.AppConfig.String("host"), 301)
			}
		}

		this.Data["Language"] = paste.Language
		this.Data["Code"] = paste.Code
		this.Data["CodeID"] = paste.Id
		this.Data["pageTitle"] = "Paste #" + strconv.Itoa(paste.Id)
	} else {
		fmt.Println("err : %s\n", err)
		this.Redirect("http://" + beego.AppConfig.String("host"), 301)
	}

	this.TplName = "code.tpl"
	this.Layout = "layout.tpl"
}