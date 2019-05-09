p6_aws_waf_size_constraint_set_update() {
    local size_constraint_set_id="$1"
    local change_token="$2"
    local updates="$3"
    shift 3

    p6_log_or_run aws waf update-size-constraint-set --size-constraint-set-id $size_constraint_set_id --change-token $change_token --updates $updates "$@"
}
