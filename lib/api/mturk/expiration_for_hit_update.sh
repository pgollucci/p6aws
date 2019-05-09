p6_aws_mturk_expiration_for_hit_update() {
    local hit_id="$1"
    local expire_at="$2"
    shift 2

    p6_log_or_run aws mturk update-expiration-for-hit --hit-id $hit_id --expire-at $expire_at "$@"
}
