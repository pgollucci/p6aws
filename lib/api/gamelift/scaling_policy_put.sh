p6_aws_gamelift_scaling_policy_put() {
    local name="$1"
    local fleet_id="$2"
    local metric_name="$3"
    shift 3

    p6_log_or_run aws gamelift put-scaling-policy --name $name --fleet-id $fleet_id --metric-name $metric_name "$@"
}
