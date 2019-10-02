######################################################################
#<
#
# Function:
#	p6_aws_codebuild_project_create(name, source, artifacts, environment, service_role)
#
#  Args:
#	name - 
#	source - 
#	artifacts - 
#	environment - 
#	service_role - 
#
#>
######################################################################
p6_aws_codebuild_project_create() {
    local name="$1"
    local source="$2"
    local artifacts="$3"
    local environment="$4"
    local service_role="$5"
    shift 5

    p6_run_write_cmd aws codebuild create-project --name $name --source $source --artifacts $artifacts --environment $environment --service-role $service_role "$@"
}