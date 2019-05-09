p6_aws_sns_platform_application_create() {
    local name="$1"
    local platform="$2"
    local attributes="$3"
    shift 3

    p6_log_or_run aws sns create-platform-application --name $name --platform $platform --attributes $attributes "$@"
}
