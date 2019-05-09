p6_aws_glue_trigger_create() {
    local name="$1"
    local type="$2"
    local actions="$3"
    shift 3

    p6_log_or_run aws glue create-trigger --name $name --type $type --actions $actions "$@"
}
