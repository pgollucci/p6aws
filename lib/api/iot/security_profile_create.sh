p6_aws_iot_security_profile_create() {
    local security_profile_name="$1"
    local behaviors="$2"
    shift 2

    p6_log_or_run aws iot create-security-profile --security-profile-name $security_profile_name --behaviors $behaviors "$@"
}
