######################################################################
#<
#
# Function:
#      = p6_aws_swf_workflow_type_register(domain, name, workflow_version)
#
# Arg(s):
#    domain - 
#    name - 
#    workflow_version - 
#
#
#>
######################################################################
p6_aws_swf_workflow_type_register() {
    local domain="$1"
    local name="$2"
    local workflow_version="$3"
    shift 3

    p6_run_write_cmd aws swf register-workflow-type --domain $domain --name $name --workflow-version $workflow_version "$@"
}