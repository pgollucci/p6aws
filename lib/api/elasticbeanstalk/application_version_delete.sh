p6_aws_elasticbeanstalk_application_version_delete() {
    local application_name="$1"
    local version_label="$2"
    shift 2

    p6_run_write_cmd aws elasticbeanstalk delete-application-version --application-name $application_name --version-label $version_label "$@"
}
