######################################################################
#<
#
# Function:
#      = p6_aws_inspector_rules_packages_list()
#
#
#
#>
######################################################################
p6_aws_inspector_rules_packages_list() {

    p6_run_read_cmd aws inspector list-rules-packages "$@"
}