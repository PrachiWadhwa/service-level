
account_id = 4438259
api_key    = "NRAK-VRXRZURE3KIF089GIFYW7GSSJGV"
region     = "EU"
newrelic_log_parsing_rule={

    1={
   name        = "log_parse_rule1"
    attribute   = "message"
    enabled     = true
    grok        = "sampleattribute='%%{NUMBER:test:int}'"
    lucene      = "logtype:linux_messages"
    nrql        = "SELECT * FROM Log WHERE logtype = 'linux_messages'"

    }
}


