p6_aws_amplify_app_create() {
    local name="$1"
    local repository="$2"
    local platform="$3"
    local oauth_token="$4"
    shift 4

    p6_run_write_cmd aws amplify create-app --name $name --repository $repository --platform $platform --oauth-token $oauth_token "$@"
}
