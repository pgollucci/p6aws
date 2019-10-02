######################################################################
#<
#
# Function:
#	p6_aws_glue_workflows_list()
#
#>
######################################################################
p6_aws_glue_workflows_list() {

    p6_run_read_cmd aws glue list-workflows "$@"
}