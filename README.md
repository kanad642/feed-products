# README

* version
  + Ruby `2.5.3`
  + Rails `5.1.6`


* Database creation
  + N/A At this time. Although we have used Postgre Because we have delpoyed our code om Heroku.


* Deployment instructions
  + After PR review once the code will marge into mster branch it will be auto deploy.
  + if you want to deploy any specif git branch use `git push heroku brach-name:master` ]


* Where to find your code
 + **GIT** - https://github.com/kanad642/feed-products

* Application is hosted on heroku
  + **URL** - https://feed-products.herokuapp.com/
  + This time there is noting on UI side but going truther if any UI is needed we can build accordingly.


* API end point to process feed import

## Feed [/api_v1/process?api_key={api_key}&file_path={file_path}]

### Feed Data [POST]

+ Parameters
  + api_key (required, string, `50c1d711d2b584d7`).. System assigned API key to the Partners.
  + file_path (required, string, `capterra.yaml`).. File Path [ Remote file Path ]
  + Domain (required, string, `development`).. default is development [http://localhost:3000/api_v1] and production [ https://feed-products.herokuapp.com/api_v1]



 * To execute this command you will need local application setup
    - script/getapp_import 50c1d711d2b584d7  public/capterra.yaml  development

* In case want to call remote server you can use
  - script/getapp_import 50c1d711d2b584d7  public/capterra.yaml  production

 * i am planing to process this feed import on server side through sidekiq [Background job].
  in as response i have sent only filr data but later on a notification will be send based on requirements.


