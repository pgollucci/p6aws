p6_aws_emr_auto_scaling_policy_put() {
    local cluster_id="$1"
    local instance_group_id="$2"
    local auto_scaling_policy="$3"
    shift 3

    p6_run_write_cmd aws emr put-auto-scaling-policy --cluster-id $cluster_id --instance-group-id $instance_group_id --auto-scaling-policy $auto_scaling_policy "$@"
}
