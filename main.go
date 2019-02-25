package main

import (
	"github.com/astaxie/beego"
	_ "github.com/snghnaveen/fast-resume-builder/routers"
	//_ "my-awesome-go/routers"
)

func main() {
	beego.Run()
}
