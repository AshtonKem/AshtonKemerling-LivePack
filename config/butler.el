(add-to-list 'load-path "/Users/ashtonkemerling/Documents/Butler")
(require 'butler)
(add-to-list 'butler-servers
             '(jenkins "Jenkins"
                       (server-address . "https://jenkins.n-s.us/jenkins/view/Data%20Engine/")
                       (auth-file . "~/.authinfo.gpg")))
