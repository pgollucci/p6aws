p6_aws_pi_dimension_keys_describe() {
    local service_type="$1"
    local identifier="$2"
    local start_time="$3"
    local end_time="$4"
    local metric="$5"
    local group_by="$6"
    shift 6

    p6_log_and_run aws pi describe-dimension-keys --service-type $service_type --identifier $identifier --start-time $start_time --end-time $end_time --metric $metric --group-by $group_by "$@"
}
