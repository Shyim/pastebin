package main

import (
	_ "paste/routers"
	"github.com/astaxie/beego"
	_ "github.com/mattn/go-sqlite3"
	"paste/models"
	"github.com/astaxie/beego/orm"
	"github.com/astaxie/beego/cache"
	"fmt"
)

func main() {
	initModels();
	beego.Run()
}

func initModels() {
	orm.RegisterModel(new(models.Paste))

	orm.RegisterDataBase("default", "sqlite3", "data.db", 30)

	/** Sync Tables with Db */
	err := orm.RunSyncdb("default", false, false)
	if err != nil {
		fmt.Println(err)
	}
}

func initCache() cache.Cache {
	bm, err := cache.NewCache("memory", `{"interval":3600}`)

	if err != nil {
		fmt.Println("Cache Init error %s\n", err);
	}

	return bm;
}