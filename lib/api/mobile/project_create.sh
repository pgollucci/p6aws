######################################################################
#<
#
# Function:
#	p6_aws_mobile_project_create()
#
#>
######################################################################
p6_aws_mobile_project_create() {

    p6_run_write_cmd aws mobile create-project "$@"
}