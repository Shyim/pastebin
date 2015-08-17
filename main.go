package main

import (
	_ "paste/routers"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	_ "github.com/mattn/go-sqlite3"
	"paste/models"
	"fmt"
)

func init() {
	orm.RegisterModel(new(models.Paste))

	orm.RegisterDataBase("default", "sqlite3", "data.db", 30)

	/** Sync Tables with Db */
	err := orm.RunSyncdb("default", false, true)
	if err != nil {
		fmt.Println(err)
	}
}

func main() {
	beego.Run()
}