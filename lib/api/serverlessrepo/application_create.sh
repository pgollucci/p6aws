p6_aws_serverlessrepo_application_create() {
    local author="$1"
    local description="$2"
    local name="$3"
    shift 3

    p6_run_write_cmd aws serverlessrepo create-application --author $author --description $description --name $name "$@"
}
