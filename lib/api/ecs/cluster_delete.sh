p6_aws_ecs_cluster_delete() {
    local cluster="$1"
    shift 1

    p6_log_or_run aws ecs delete-cluster --cluster $cluster "$@"
}
