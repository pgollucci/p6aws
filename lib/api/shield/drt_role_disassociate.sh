######################################################################
#<
#
# Function:
#      = p6_aws_shield_drt_role_disassociate()
#
#
#
#>
######################################################################
p6_aws_shield_drt_role_disassociate() {

    p6_run_write_cmd aws shield disassociate-drt-role "$@"
}