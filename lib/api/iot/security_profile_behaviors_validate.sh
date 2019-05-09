p6_aws_iot_security_profile_behaviors_validate() {
    local behaviors="$1"
    shift 1

    p6_run_write_cmd aws iot validate-security-profile-behaviors --behaviors $behaviors "$@"
}
