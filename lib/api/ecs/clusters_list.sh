p6_aws_ecs_clusters_list() {

    p6_run_read_cmd aws ecs list-clusters "$@"
}
