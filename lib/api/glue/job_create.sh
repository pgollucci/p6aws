######################################################################
#<
#
# Function:
#	p6_aws_glue_job_create(name, role, command)
#
#  Args:
#	name - 
#	role - 
#	command - 
#
#>
######################################################################
p6_aws_glue_job_create() {
    local name="$1"
    local role="$2"
    local command="$3"
    shift 3

    p6_run_write_cmd aws glue create-job --name $name --role $role --command $command "$@"
}