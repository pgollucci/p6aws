######################################################################
#<
#
# Function:
#	p6_aws_support_case_resolve()
#
#>
######################################################################
p6_aws_support_case_resolve() {

    p6_run_write_cmd aws support resolve-case "$@"
}