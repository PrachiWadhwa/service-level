
account_id = 4438259
api_key    = "NRAK-VRXRZURE3KIF089GIFYW7GSSJGV"
region     = "EU"
drop_rule={

    1={
   action      = "drop_attributes"
 description= "drping atribute"
  nrql="SELECT userEmail, userName FROM MyCustomEvent"

    }
}