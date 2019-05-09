p6_aws_elasticbeanstalk_platform_version_create() {
    local platform_name="$1"
    local platform_version="$2"
    local platform_definition_bundle="$3"
    shift 3

    p6_log_or_run aws elasticbeanstalk create-platform-version --platform-name $platform_name --platform-version $platform_version --platform-definition-bundle $platform_definition_bundle "$@"
}
