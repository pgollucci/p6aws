p6_aws_iot_security_profiles_for_target_list() {
    local security_profile_target_arn="$1"
    shift 1

    p6_log_and_run aws iot list-security-profiles-for-target --security-profile-target-arn $security_profile_target_arn "$@"
}
