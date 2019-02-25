<!DOCTYPE html>
<html>
<head>
    <title>{{.rs.Name}} - Resume</title>


    <meta name="viewport" content="width=device-width"/>
    <meta name="description" content="The Curriculum Vitae of Joe Bloggs."/>
    <meta charset="UTF-8">

    <link type="text/css" rel="stylesheet" href="/static/css/style.css">
    <link href='http://fonts.googleapis.com/css?family=Rokkitt:400,700|Lato:400,300' rel='stylesheet' type='text/css'>

</head>
<body id="top">
<div id="cv" class="instaFade">
    <div class="mainDetails">

        <div id="name">
            <h1 class="quickFade delayTwo">{{.rs.Name}}</h1>
            <h2 class="quickFade delayThree">{{.rs.JobTitle}}</h2>
        </div>

        <div id="contactDetails" class="quickFade delayFour">
            <ul>
                <li> {{.rs.Email}}</li>
                <li> {{.rs.PhoneNumber}}</li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>

    <div id="mainArea" class="quickFade delayFive">
        <section>
            <article>
                <div class="sectionTitle">
                    <h1>Personal Profile</h1>
                </div>

                <div class="sectionContent">
                    <p>{{.rs.CareerObjective}}</p>
                </div>
            </article>
            <div class="clear"></div>
        </section>


        <section>
            <div class="sectionTitle">
                <h1>Work Experience</h1>
            </div>

            <div class="sectionContent">
                <article>
                    <h2>{{.rs.Experience.Type}}</h2>
                    <p class="subDetails">{{.rs.Experience.From}} - {{.rs.Experience.To}}</p>
                    <p>{{.rs.Experience.Description}}</p>
                </article>

                <!--<article>
                    <h2>Job Title at Company</h2>
                    <p class="subDetails">Janruary 2007 - March 2011</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies massa et erat luctus
                        hendrerit. Curabitur non consequat enim. Vestibulum bibendum mattis dignissim. Proin id sapien
                        quis libero interdum porttitor.</p>
                </article>

                <article>
                    <h2>Job Title at Company</h2>
                    <p class="subDetails">October 2004 - December 2006</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies massa et erat luctus
                        hendrerit. Curabitur non consequat enim. Vestibulum bibendum mattis dignissim. Proin id sapien
                        quis libero interdum porttitor.</p>
                </article>

                -->
            </div>
            <div class="clear"></div>
        </section>


        <section>
            <div class="sectionTitle">
                <h1>Key Skills</h1>
            </div>

            <div class="sectionContent">
                <ul class="keySkills">
                    {{range .rs.Skills}}
                    <li>{{.}}</li>
                    {{end}}

                </ul>
            </div>
            <div class="clear"></div>
        </section>


        <section>
            <div class="sectionTitle">
                <h1>Education</h1>
            </div>

            <div class="sectionContent">
                <article>
                    <h2>{{.rs.Education.Type}}</h2>
                    <p class="subDetails">{{.rs.Education.From}} - {{.rs.Education.To}}</p>
                    <p>{{.rs.Education.Description}}</p>
                </article>

              <!--  <article>
                    <h2>College/University</h2>
                    <p class="subDetails">Qualification</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies massa et erat luctus
                        hendrerit. Curabitur non consequat enim.</p>
                </article>
                -->
            </div>
            <div class="clear"></div>
        </section>

    </div>
</div>
<script type="text/javascript">
    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
    var pageTracker = _gat._getTracker("UA-3753241-1");
    pageTracker._initData();
    pageTracker._trackPageview();
</script>
</body>
</html>