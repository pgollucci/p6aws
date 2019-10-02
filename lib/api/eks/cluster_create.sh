######################################################################
#<
#
# Function:
#	p6_aws_eks_cluster_create(name, role_arn, resources_vpc_config)
#
#  Args:
#	name - 
#	role_arn - 
#	resources_vpc_config - 
#
#>
######################################################################
p6_aws_eks_cluster_create() {
    local name="$1"
    local role_arn="$2"
    local resources_vpc_config="$3"
    shift 3

    p6_run_write_cmd aws eks create-cluster --name $name --role-arn $role_arn --resources-vpc-config $resources_vpc_config "$@"
}