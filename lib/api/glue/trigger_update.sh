p6_aws_glue_trigger_update() {
    local name="$1"
    local trigger_update="$2"
    shift 2

    p6_log_or_run aws glue update-trigger --name $name --trigger-update $trigger_update "$@"
}
