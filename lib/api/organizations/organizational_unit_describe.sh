######################################################################
#<
#
# Function:
#      = p6_aws_organizations_organizational_unit_describe(organizational_unit_id)
#
# Arg(s):
#    organizational_unit_id - 
#
#
#>
######################################################################
p6_aws_organizations_organizational_unit_describe() {
    local organizational_unit_id="$1"
    shift 1

    p6_run_read_cmd aws organizations describe-organizational-unit --organizational-unit-id $organizational_unit_id "$@"
}