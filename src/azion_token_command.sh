authorization=echo "$AZION_USERNAME:$AZION_PASSWORD" | base64 -

curl --location --request POST 'https://api.azionapi.net/tokens' \
--header 'Accept: application/json; version=3' \
--header "Authorization: Basic $authorization"
