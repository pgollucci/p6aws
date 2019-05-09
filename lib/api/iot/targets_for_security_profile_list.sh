p6_aws_iot_targets_for_security_profile_list() {
    local security_profile_name="$1"
    shift 1

    p6_log_and_run aws iot list-targets-for-security-profile --security-profile-name $security_profile_name "$@"
}
