p6_aws_mturk_qualification_type_update() {
    local qualification_type_id="$1"
    shift 1

    p6_log_or_run aws mturk update-qualification-type --qualification-type-id $qualification_type_id "$@"
}
