######################################################################
#<
#
# Function:
#      = p6_aws_dax_subnet_group_create(subnet_group_name, subnet_ids)
#
# Arg(s):
#    subnet_group_name - 
#    subnet_ids - 
#
#
#>
######################################################################
p6_aws_dax_subnet_group_create() {
    local subnet_group_name="$1"
    local subnet_ids="$2"
    shift 2

    p6_run_write_cmd aws dax create-subnet-group --subnet-group-name $subnet_group_name --subnet-ids $subnet_ids "$@"
}