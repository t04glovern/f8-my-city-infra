DELETE mycity
{

}

PUT /mycity/_doc/1
{
    "timestamp":    1556500461000,
    "first_name":   "John",
    "last_name" :   "Smith",
    "age" :         25,
    "text" :        "There's trash on the ground",
    "labels":       [ "trash", "cup", "burger" ],
    "location": {
        "lat": 37.330524,
        "lon": -121.88974
    },
    "city":         "San Jose"
}

PUT mycity
{
  "mappings": {
    "_doc": {
      "properties": {
        "location": {
          "type": "geo_point"
        },
        "timestamp": {
            "type": "date"
        }
      }
    }
  }
}

