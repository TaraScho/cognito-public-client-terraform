#config file for web app - relies on terraform outputs
export COGNITO_USERPOOL_ID=$(terraform output cognito_user_pool_id | tr -d '"')
export COGNITO_APP_CLIENT_ID=$(terraform output cognito_client_id | tr -d '"')
cat <<EOF > /root/lab/demo_application/modules/static_website_aws/config.json
{
    "UserPoolId": "${COGNITO_USERPOOL_ID}",
    "ClientId": "${COGNITO_APP_CLIENT_ID}"
}
EOF

aws s3 cp /root/lab/demo_application/modules/static_website_aws/config.json s3://$WEBSITE_BUCKET_NAME
