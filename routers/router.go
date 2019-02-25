package routers

import (
	"github.com/snghnaveen/fast-resume-builder/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.HomeController{})
    beego.Router("/build", &controllers.BuildController{})
}
