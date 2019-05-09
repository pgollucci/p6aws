p6_aws_mturk_qualification_type_delete() {
    local qualification_type_id="$1"
    shift 1

    p6_log_or_run aws mturk delete-qualification-type --qualification-type-id $qualification_type_id "$@"
}
