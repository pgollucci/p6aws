######################################################################
#<
#
# Function:
#	p6_aws_cloudformation_template_validate()
#
#>
######################################################################
p6_aws_cloudformation_template_validate() {

    p6_run_write_cmd aws cloudformation validate-template "$@"
}