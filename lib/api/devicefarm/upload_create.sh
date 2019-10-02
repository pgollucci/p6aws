######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_upload_create(project_arn, name, type)
#
#  Args:
#	project_arn - 
#	name - 
#	type - 
#
#>
######################################################################
p6_aws_devicefarm_upload_create() {
    local project_arn="$1"
    local name="$2"
    local type="$3"
    shift 3

    p6_run_write_cmd aws devicefarm create-upload --project-arn $project_arn --name $name --type $type "$@"
}