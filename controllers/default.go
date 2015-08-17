package controllers

import (
	"github.com/astaxie/beego"
	"fmt"
	"github.com/astaxie/beego/orm"
	"paste/models"
	"strconv"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {
	this.Data["pageTitle"] = "Home";
	this.TplNames = "index.tpl"
	this.Layout = "layout.tpl"
}

func(this *MainController) Post() {
	this.Data["pageTitle"] = "Home";
	language := this.GetString("language");
	editor := this.GetString("editor");

	o := orm.NewOrm();
	paste := models.Paste{Code: editor, Language: language}

	id, err := o.Insert(&paste)

	if(err != nil) {
		fmt.Printf("ID: %d, ERR: %v\n", id, err)
	} else {
		this.Redirect("http://paste.shyim.de/code/" + strconv.Itoa(int(id)), 301)
	}

	this.TplNames = "index.tpl";
	this.Layout = "layout.tpl"
}
