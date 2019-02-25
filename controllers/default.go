package controllers

import (
	"fmt"
	"github.com/astaxie/beego"
	"strings"
)

type MainController struct {
	beego.Controller
}
type HomeController struct {
	beego.Controller
}

type BuildController struct {
	beego.Controller
}

type Test struct {
	beego.Controller
}

func (c *HomeController) Get() {
	c.TplName = "home.tpl"

}
func (c *BuildController) Post() {

	type EducationForm struct {
		Type string `form:"education_type"`
		From string `form:"education_from"`
		To   string `form:"education_to"`
		Description string `form:"education_description"`
	}

	type ExperienceForm struct {
		Type string `form:"experience_type"`
		From string `form:"experience_from"`
		To   string `form:"experience_to"`
		Description string `form:"experience_description"`
	}

	type ResumeForm struct {
		Id              int    `form:"-"`
		Name            string `form:"name"`
		Email           string `form:"email"`
		PhoneNumber     string `form:"phone_number"`
		CareerObjective string `form:"career_objective"`
		JobTitle        string `form:"job_title"`
		Skill           string `form:"skills"`
		Education       EducationForm
		Experience      ExperienceForm
		Skills          []string
	}

	educationForm := EducationForm{}
	if err := c.ParseForm(&educationForm); err != nil {
		//handle error
		fmt.Println(err)

	}
	experience := ExperienceForm{}
	if err := c.ParseForm(&experience); err != nil {
		//handle error
		fmt.Println(err)
	}

	resumeForm := ResumeForm{}
	if err := c.ParseForm(&resumeForm); err != nil {
		//handle error
		fmt.Println(err)
	}

	resumeForm.Education = educationForm
	resumeForm.Experience = experience

	fmt.Println("***Start")

	fmt.Println(resumeForm)
	fmt.Println("***End")

	resumeForm.Skills = strings.Split(resumeForm.Skill, ",")

	c.Data["rs"] = &resumeForm
	c.TplName = "resume.tpl"

}
