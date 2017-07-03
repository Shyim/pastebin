package main

import (
	_ "github.com/shyim/pastebin/routers"
	"github.com/astaxie/beego"
	_ "github.com/mattn/go-sqlite3"
	"github.com/shyim/pastebin/models"
	"github.com/astaxie/beego/orm"
	"github.com/astaxie/beego/toolbox"
	"fmt"
	"time"
	"strconv"
)

func main() {
	initModels();
	initCron();
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

func initCron() {
	tk1 := toolbox.NewTask("deleteOldPaste", "0 0 * * * *", func() error {
		o := orm.NewOrm()
		var r orm.RawSeter
		r = o.Raw("DELETE FROM paste WHERE Timestamp != 0 AND Timestamp < " + strconv.Itoa(int(time.Now().Unix())))
		res, err := r.Exec()
		fmt.Println("Deleting old pasts")
		if err == nil {
			num, _ := res.RowsAffected()
			fmt.Println("Affected Rows", num)
		} else {
			fmt.Println("Database Error: ", err)
		}

		return nil
	})
	toolbox.AddTask("deleteOldPaste", tk1)
	toolbox.StartTask()
}
