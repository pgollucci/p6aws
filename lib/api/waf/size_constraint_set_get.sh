######################################################################
#<
#
# Function:
#      = p6_aws_waf_size_constraint_set_get(size_constraint_set_id)
#
# Arg(s):
#    size_constraint_set_id - 
#
#
#>
######################################################################
p6_aws_waf_size_constraint_set_get() {
    local size_constraint_set_id="$1"
    shift 1

    p6_run_read_cmd aws waf get-size-constraint-set --size-constraint-set-id $size_constraint_set_id "$@"
}