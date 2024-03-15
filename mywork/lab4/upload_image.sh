#!/bin/bash

echo "Running Image Script"

curl https://pbs.twimg.com/profile_images/1323269788370612225/ZknPQNjT_400x400.jpg > geico2.jpg

aws s3 cp geico2.jpg s3://ds2002-zhr8wex/

aws s3 presign --expires-in 604800 s3://ds2002-zhr8wex/geico2.jpg

# https://ds2002-zhr8wex.s3.us-east-1.amazonaws.com/geico2.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIA2UC3CJHW4IZ7ROYU%2F20240315%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240315T043619Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Security-Token=FwoGZXIvYXdzEI7%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDAL%2FhUKStkJgG3Wb%2BCLFASwnosXmnQi2Evt9YcLecAVRt2vWxsIyIM5OQptzxhEYRZjxe0jFQXK%2BrssegaoOInNKQM61X5CvnCdrcy%2BFGnCFQLp2a9kaiwEMvMlCBqNfhuZ4Vt2hBUK0hKrMuCeSMpCj5mjDiDg1uYO0jC3RfysOmNnSugdnuR1LdSVZLc8gNwZFq4cegR9rlD0oM1iyDxt08tAlRN%2F%2FGdbbY%2Fmo%2BZrPCWp20lzo6bGYGwzHluvKjdHyt6OLs4PMfqBuy5x43rUmyPdkKI%2BUz68GMi2ze0M5ds7zQSEYq%2FcWYHhjeMsO8wG9uyRA8EFJ%2FAsQZLUDBbGSn8DdUjwwWQQ%3D&X-Amz-Signature=76aca9b9c6e023ceebb214df56def42a76e680342732378d27185f3d28f22ef4