p6_aws_ecs_clusters_list() {

    p6_log_and_run aws ecs list-clusters "$@"
}
