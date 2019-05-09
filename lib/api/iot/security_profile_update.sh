p6_aws_iot_security_profile_update() {
    local security_profile_name="$1"
    shift 1

    p6_run_write_cmd aws iot update-security-profile --security-profile-name $security_profile_name "$@"
}
