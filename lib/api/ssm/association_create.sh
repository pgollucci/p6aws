######################################################################
#<
#
# Function:
#	p6_aws_ssm_association_create(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_ssm_association_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws ssm create-association --name $name "$@"
}