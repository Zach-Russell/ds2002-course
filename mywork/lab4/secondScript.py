import boto3
import urllib.request
from botocore.exceptions import ClientError

s3 = boto3.client('s3', region_name='us-east-1')



#use urllib to get file
urllib.request.urlretrieve("https://living.geico.com/wp-content/uploads/GeckoCookies.jpg", "cookies.jpg")


#upload file to bucket in s3
bucket = 'ds2002-zhr8wex'
local_file = 'cookies.jpg'

resp = s3.put_object(
    Body = local_file,
    Bucket = bucket,
    Key = local_file
)

#Generate the presigned URL
try:
    response = s3.generate_presigned_url('get_object', Params={'Bucket': 'ds2002-zhr8wex', 'Key': 'cookies.jpg'}, ExpiresIn= 604800)
    print(response)
except ClientError as e:
    print("ERROR!")



#Presigned url
#https://ds2002-zhr8wex.s3.amazonaws.com/cookies.jpg?AWSAccessKeyId=ASIA2UC3CJHW4IZ7ROYU&Signature=LZ7P4knujmnPzSvzl8x92S%2FLYl8%3D&x-amz-security-token=FwoGZXIvYXdzEI7%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDAL%2FhUKStkJgG3Wb%2BCLFASwnosXmnQi2Evt9YcLecAVRt2vWxsIyIM5OQptzxhEYRZjxe0jFQXK%2BrssegaoOInNKQM61X5CvnCdrcy%2BFGnCFQLp2a9kaiwEMvMlCBqNfhuZ4Vt2hBUK0hKrMuCeSMpCj5mjDiDg1uYO0jC3RfysOmNnSugdnuR1LdSVZLc8gNwZFq4cegR9rlD0oM1iyDxt08tAlRN%2F%2FGdbbY%2Fmo%2BZrPCWp20lzo6bGYGwzHluvKjdHyt6OLs4PMfqBuy5x43rUmyPdkKI%2BUz68GMi2ze0M5ds7zQSEYq%2FcWYHhjeMsO8wG9uyRA8EFJ%2FAsQZLUDBbGSn8DdUjwwWQQ%3D&Expires=1711087389