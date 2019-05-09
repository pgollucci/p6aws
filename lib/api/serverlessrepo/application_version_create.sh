p6_aws_serverlessrepo_application_version_create() {
    local application_id="$1"
    local semantic_version="$2"
    shift 2

    p6_run_write_cmd aws serverlessrepo create-application-version --application-id $application_id --semantic-version $semantic_version "$@"
}
