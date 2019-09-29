######################################################################
#<
#
# Function:
#      = p6_aws_redshift_cluster_subnet_group_create(cluster_subnet_group_name, description, subnet_ids)
#
# Arg(s):
#    cluster_subnet_group_name - 
#    description - 
#    subnet_ids - 
#
#
#>
######################################################################
p6_aws_redshift_cluster_subnet_group_create() {
    local cluster_subnet_group_name="$1"
    local description="$2"
    local subnet_ids="$3"
    shift 3

    p6_run_write_cmd aws redshift create-cluster-subnet-group --cluster-subnet-group-name $cluster_subnet_group_name --description $description --subnet-ids $subnet_ids "$@"
}