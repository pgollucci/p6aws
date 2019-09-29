######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_ecs_clusters_describe()
#
#
#
#>
######################################################################
p6_aws_opsworks_ecs_clusters_describe() {

    p6_run_read_cmd aws opsworks describe-ecs-clusters "$@"
}