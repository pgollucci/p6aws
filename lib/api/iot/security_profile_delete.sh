p6_aws_iot_security_profile_delete() {
    local security_profile_name="$1"
    shift 1

    p6_log_or_run aws iot delete-security-profile --security-profile-name $security_profile_name "$@"
}
