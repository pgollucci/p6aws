p6_aws_iot_security_profile_detach() {
    local security_profile_name="$1"
    local security_profile_target_arn="$2"
    shift 2

    p6_log_or_run aws iot detach-security-profile --security-profile-name $security_profile_name --security-profile-target-arn $security_profile_target_arn "$@"
}
