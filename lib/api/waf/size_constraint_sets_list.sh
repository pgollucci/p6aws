######################################################################
#<
#
# Function:
#      = p6_aws_waf_size_constraint_sets_list()
#
#
#
#>
######################################################################
p6_aws_waf_size_constraint_sets_list() {

    p6_run_read_cmd aws waf list-size-constraint-sets "$@"
}