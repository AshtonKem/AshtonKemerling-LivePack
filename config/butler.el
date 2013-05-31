(add-to-list 'load-path "/Users/ashtonkemerling/Documents/Butler")
(require 'butler)
(add-to-list 'butler-server-list
             '(jenkins "Jenkins"
                       (server-address . "https://jenkins.n-s.us/jenkins/")
                       (auth-file . "~/.authinfo.gpg")))
