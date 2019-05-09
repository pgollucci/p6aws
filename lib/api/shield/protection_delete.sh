p6_aws_shield_protection_delete() {
    local protection_id="$1"
    shift 1

    p6_log_or_run aws shield delete-protection --protection-id $protection_id "$@"
}
