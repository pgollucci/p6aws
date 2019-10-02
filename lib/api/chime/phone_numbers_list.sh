######################################################################
#<
#
# Function:
#	p6_aws_chime_phone_numbers_list()
#
#>
######################################################################
p6_aws_chime_phone_numbers_list() {

    p6_run_read_cmd aws chime list-phone-numbers "$@"
}