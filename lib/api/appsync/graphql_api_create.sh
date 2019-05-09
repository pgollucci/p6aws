p6_aws_appsync_graphql_api_create() {
    local name="$1"
    local authentication_type="$2"
    shift 2

    p6_run_write_cmd aws appsync create-graphql-api --name $name --authentication-type $authentication_type "$@"
}
