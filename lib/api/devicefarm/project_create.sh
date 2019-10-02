######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_project_create(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_devicefarm_project_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws devicefarm create-project --name $name "$@"
}