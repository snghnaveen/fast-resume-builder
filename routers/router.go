package routers

import (
	"my-awesome-go/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.HomeController{})
    beego.Router("/build", &controllers.BuildController{})
}
