######################################################################
#<
#
# Function:
#      = p6_aws_swf_workflow_type_describe(domain, workflow_type)
#
# Arg(s):
#    domain - 
#    workflow_type - 
#
#
#>
######################################################################
p6_aws_swf_workflow_type_describe() {
    local domain="$1"
    local workflow_type="$2"
    shift 2

    p6_run_read_cmd aws swf describe-workflow-type --domain $domain --workflow-type $workflow_type "$@"
}