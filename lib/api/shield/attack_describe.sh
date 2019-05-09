p6_aws_shield_attack_describe() {
    local attack_id="$1"
    shift 1

    p6_log_and_run aws shield describe-attack --attack-id $attack_id "$@"
}
