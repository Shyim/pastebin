package controllers

import (
	"github.com/astaxie/beego"
	"fmt"
	"github.com/astaxie/beego/orm"
	"github.com/shyim/pastebin/models"
	"math/rand"
	"time"
	"strconv"
)

var src = rand.NewSource(time.Now().UnixNano())
const letterBytes = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" // Letters
const (
	letterIdxBits = 6
	letterIdxMask = 1 << letterIdxBits - 1
	letterIdxMax  = 63 / letterIdxBits
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {
	this.Data["pageTitle"] = "Home";
	this.TplName = "index.tpl"
	this.Layout = "layout.tpl"
}

func(this *MainController) Post() {
	this.Data["pageTitle"] = "Home";
	language := this.GetString("language");
	editor := this.GetString("editor");
	expiration := this.GetString("expiration");

	expirationInt, err := strconv.Atoi(expiration);

	if err != nil {
		this.Abort("500");
	}

	o := orm.NewOrm();
	paste := models.Paste{
		Code: editor,
		Language: language,
		Url: RandStringBytesMaskImprSrc(32),
		Timestamp: int(time.Now().Unix()),
		Expiration: expirationInt,
	}

	id, err := o.Insert(&paste)

	if(err != nil) {
		fmt.Printf("ID: %d, ERR: %v\n", id, err)
	} else {
		this.Redirect("http://" + beego.AppConfig.String("host") + "/code/" + paste.Url, 301)
	}

	this.TplName = "index.tpl";
	this.Layout = "layout.tpl"
}

func RandStringBytesMaskImprSrc(n int) string {
	b := make([]byte, n)
	// A src.Int63() generates 63 random bits, enough for letterIdxMax characters!
	for i, cache, remain := n-1, src.Int63(), letterIdxMax; i >= 0; {
		if remain == 0 {
			cache, remain = src.Int63(), letterIdxMax
		}
		if idx := int(cache & letterIdxMask); idx < len(letterBytes) {
			b[i] = letterBytes[idx]
			i--
		}
		cache >>= letterIdxBits
		remain--
	}

	return string(b)
}