######################################################################
#<
#
# Function:
#      = p6_aws_cloudformation_template_get()
#
#
#
#>
######################################################################
p6_aws_cloudformation_template_get() {

    p6_run_read_cmd aws cloudformation get-template "$@"
}