p6_aws_opsworks_ecs_cluster_deregister() {
    local ecs_cluster_arn="$1"
    shift 1

    p6_log_or_run aws opsworks deregister-ecs-cluster --ecs-cluster-arn $ecs_cluster_arn "$@"
}
