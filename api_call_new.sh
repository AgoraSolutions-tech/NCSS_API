curl -i -b cookiejar -c cookiejar -X 'GET' $(cat url) > response
redirect_url1=$(cat response  | grep Location | cut -c 11- | rev | cut -c 2- | rev)
curl -i -b cookiejar -c cookiejar -X 'GET' $redirect_url1 > response2
post_url=$(cat response2 | grep -o "action.*method" | cut -c 9- | rev | cut -c 9- | rev | (printf 'https://cmems-cas.cls.fr' && cat))
login_token=$(cat response2 | grep -o 'name="lt".* />' | cut -c 18- | rev | cut -c 5- | rev)
curl -i -b cookiejar -c cookiejar -d 'username=fbehnen&password=pTAT7s8zKQlv&lt='$login_token'&_eventId=submit&submit=+' -H 'Content-Type: application/x-www-form-urlencoded' -X 'POST' $post_url > response3
redirect_url3=$(cat response3 | grep Location | cut -c 11- | rev | cut -c 2- | rev)
curl -i -b cookiejar -c cookiejar -X 'GET' $redirect_url3 > response4
redirect_url4=$(cat response4 | grep Location | cut -c 11- | rev | cut -c 2- | rev)
curl -i -b cookiejar -c cookiejar -X 'GET' $redirect_url4 > response5
redirect_url5=$(cat response5 | grep Location | cut -c 11- | rev | cut -c 2- | rev)
curl -i -b cookiejar -c cookiejar -X 'GET' $redirect_url5 > response6
redirect_url6=$(cat response6 | grep Location | cut -c 11- | rev | cut -c 2- | rev)
curl -b cookiejar -c cookiejar -X 'GET' $redirect_url6 > response7


