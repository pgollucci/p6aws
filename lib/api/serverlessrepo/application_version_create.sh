p6_aws_serverlessrepo_application_version_create() {
    local application_id="$1"
    local semantic_version="$2"
    shift 2

    p6_log_or_run aws serverlessrepo create-application-version --application-id $application_id --semantic-version $semantic_version "$@"
}
