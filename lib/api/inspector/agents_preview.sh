######################################################################
#<
#
# Function:
#	p6_aws_inspector_agents_preview()
#
#>
######################################################################
p6_aws_inspector_agents_preview() {

    p6_run_write_cmd aws inspector preview-agents "$@"
}