######################################################################
#<
#
# Function:
#	p6_aws_shield_attacks_list()
#
#>
######################################################################
p6_aws_shield_attacks_list() {

    p6_run_read_cmd aws shield list-attacks "$@"
}