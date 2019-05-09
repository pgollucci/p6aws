p6_aws_ecs_cluster_create() {

    p6_log_or_run aws ecs create-cluster "$@"
}
