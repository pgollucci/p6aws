######################################################################
#<
#
# Function:
#	p6_aws_ecs_cluster_create()
#
#>
######################################################################
p6_aws_ecs_cluster_create() {

    p6_run_write_cmd aws ecs create-cluster "$@"
}