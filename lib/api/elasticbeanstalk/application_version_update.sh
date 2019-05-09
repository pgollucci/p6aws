p6_aws_elasticbeanstalk_application_version_update() {
    local application_name="$1"
    local version_label="$2"
    shift 2

    p6_log_or_run aws elasticbeanstalk update-application-version --application-name $application_name --version-label $version_label "$@"
}
