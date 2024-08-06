curl -i -b cookiejar -c cookiejar -X 'GET' $(cat url2) > response
redirect_url1=$(cat response  | grep Location | cut -c 11- | rev | cut -c 2- | rev)
curl -i -b cookiejar -c cookiejar -X 'GET' $redirect_url1 > response2
redirect_url2=$(cat response2 | grep Location | cut -c 11- | rev | cut -c 2- | rev)
curl -i -b cookiejar -c cookiejar -X 'GET' $redirect_url2 > response3
redirect_url3=$(cat response3 | grep Location | cut -c 11- | rev | cut -c 2- | rev)
curl -i -b cookiejar -c cookiejar -X 'GET' $redirect_url3 > response4
redirect_url4=$(cat response4 | grep Location | cut -c 11- | rev | cut -c 2- | rev)
curl -i -b cookiejar -c cookiejar -X 'GET' $redirect_url4 > response5
redirect_url5=$(cat response5 | grep Location | cut -c 11- | rev | cut -c 2- | rev)
curl -b cookiejar -c cookiejar -X 'GET' $redirect_url5 > response6

