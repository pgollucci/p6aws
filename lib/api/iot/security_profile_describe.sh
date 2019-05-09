p6_aws_iot_security_profile_describe() {
    local security_profile_name="$1"
    shift 1

    p6_log_and_run aws iot describe-security-profile --security-profile-name $security_profile_name "$@"
}
